// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A validation to apply on custom resource provider requests.
class CustomRPValidations {
  /// A link to the validation specification. The specification must be hosted on raw.githubusercontent.com.
  final pulumi.Input<String> specification;
  /// The type of validation to run against a matching request.
  final pulumi.Input<String>? validationType;

  /// Creates a new [CustomRPValidations].
  /// [specification] A link to the validation specification. The specification must be hosted on raw.githubusercontent.com.
  /// [validationType] The type of validation to run against a matching request.
  const CustomRPValidations({
    required this.specification,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification,
      'validationType': ?validationType,
    };
  }

  factory CustomRPValidations.fromMap(Map<String, dynamic> map) {
    return CustomRPValidations(
      specification: pulumi.Input.fromValue(map['specification'] as String),
      validationType: (() { final guardedValue = map['validationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
