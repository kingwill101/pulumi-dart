// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Constraint.
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

  ConstraintArgs({
    this.acceptLanguage,
    this.description,
    required this.parameters,
    required this.portfolioId,
    required this.productId,
    this.region,
    required this.type,
  });

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
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      parameters: pulumi.Input.asInput<String>(map['parameters']),
      portfolioId: pulumi.Input.asInput<String>(map['portfolioId']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
