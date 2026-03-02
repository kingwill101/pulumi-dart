// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A validation to apply on custom resource provider requests.
class CustomRPValidationsResponse {
  /// A link to the validation specification. The specification must be hosted on raw.githubusercontent.com.
  final pulumi.Input<String> specification;
  /// The type of validation to run against a matching request.
  final pulumi.Input<String>? validationType;

  /// Creates a new [CustomRPValidationsResponse].
  /// [specification] A link to the validation specification. The specification must be hosted on raw.githubusercontent.com.
  /// [validationType] The type of validation to run against a matching request.
  CustomRPValidationsResponse({
    required this.specification,
    this.validationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification,
      'validationType': ?validationType,
    };
  }

  factory CustomRPValidationsResponse.fromMap(Map<String, dynamic> map) {
    return CustomRPValidationsResponse(
      specification: (map['specification'] as String).input(),
      validationType: map['validationType'] == null ? null : (map['validationType']! as String).input(),
    );
  }
}

