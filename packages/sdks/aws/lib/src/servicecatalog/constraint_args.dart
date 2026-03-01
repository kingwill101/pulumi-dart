// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_constraint_constraint_args_doc}
/// The set of arguments for Constraint.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_constraint_constraint_args_doc}
class ConstraintArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Description of the constraint.
  final pulumi.Input<String>? description;
  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  final pulumi.Input<String> parameters;
  /// Portfolio identifier.
  final pulumi.Input<String> portfolioId;
  /// Product identifier.
  final pulumi.Input<String> productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ConstraintArgs].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the constraint.
  /// [parameters] Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ConstraintArgs({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? description,
    required pulumi.Output<String> parameters,
    required pulumi.Output<String> portfolioId,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      description = pulumi.Input.asOptionalInput<String>(description),
      parameters = pulumi.Input.asInput<String>(parameters),
      portfolioId = pulumi.Input.asInput<String>(portfolioId),
      productId = pulumi.Input.asInput<String>(productId),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'parameters': parameters,
      'portfolioId': portfolioId,
      'productId': productId,
      'region': ?region,
      'type': type,
    };
  }

  factory ConstraintArgs.fromMap(Map<String, dynamic> map) {
    return ConstraintArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      parameters: pulumi.Output.create<String>(map['parameters'] as String),
      portfolioId: pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

