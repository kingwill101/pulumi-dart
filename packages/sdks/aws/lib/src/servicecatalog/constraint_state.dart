// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Constraint resources.
class ConstraintState {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Description of the constraint.
  final pulumi.Input<String>? description;
  /// Owner of the constraint.
  final pulumi.Input<String>? owner;
  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  final pulumi.Input<String>? parameters;
  /// Portfolio identifier.
  final pulumi.Input<String>? portfolioId;
  /// Product identifier.
  final pulumi.Input<String>? productId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? status;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ConstraintState].
  /// [acceptLanguage] Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  /// [description] Description of the constraint.
  /// [owner] Owner of the constraint.
  /// [parameters] Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Optional.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ConstraintState({
    pulumi.Output<String>? acceptLanguage,
    pulumi.Output<String>? description,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? productId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
      description = pulumi.Input.asOptionalInput<String>(description),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      productId = pulumi.Input.asOptionalInput<String>(productId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'owner': ?owner,
      'parameters': ?parameters,
      'portfolioId': ?portfolioId,
      'productId': ?productId,
      'region': ?region,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ConstraintState.fromMap(Map<String, dynamic> map) {
    return ConstraintState(
      acceptLanguage: map['acceptLanguage'] == null ? null : pulumi.Output.create<String>(map['acceptLanguage'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      productId: map['productId'] == null ? null : pulumi.Output.create<String>(map['productId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

