// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Constraint.
class ConstraintArgs {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  final Input<String>? acceptLanguage;

  /// Description of the constraint.
  final Input<String>? description;

  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  final Input<String> parameters;

  /// Portfolio identifier.
  final Input<String> portfolioId;

  /// Product identifier.
  final Input<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  final Input<String> type;

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
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      description: Input.asOptionalInput<String>(map['description']),
      parameters: Input.asInput<String>(map['parameters']),
      portfolioId: Input.asInput<String>(map['portfolioId']),
      productId: Input.asInput<String>(map['productId']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
