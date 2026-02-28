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
    String? acceptLanguage,
    String? description,
    required String parameters,
    required String portfolioId,
    required String productId,
    String? region,
    required String type,
  })  : acceptLanguage = pulumi.Input.asOptionalInput<String>(acceptLanguage),
        description = pulumi.Input.asOptionalInput<String>(description),
        parameters = pulumi.Input.asInput<String>(parameters),
        portfolioId = pulumi.Input.asInput<String>(portfolioId),
        productId = pulumi.Input.asInput<String>(productId),
        region = pulumi.Input.asOptionalInput<String>(region),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['parameters'] = parameters;
    map['portfolioId'] = portfolioId;
    map['productId'] = productId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory ConstraintArgs.fromMap(Map<String, dynamic> map) {
    return ConstraintArgs(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      parameters: map['parameters'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}
