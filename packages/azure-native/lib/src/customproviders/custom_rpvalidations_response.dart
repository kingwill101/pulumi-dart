// ignore_for_file: unused_element, unnecessary_cast


/// A validation to apply on custom resource provider requests.
class CustomRPValidationsResponse {
  /// A link to the validation specification. The specification must be hosted on raw.githubusercontent.com.
  final String specification;
  /// The type of validation to run against a matching request.
  final String? validationType;

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
      specification: map['specification'] as String,
      validationType: map['validationType'] == null ? null : map['validationType'] as String,
    );
  }
}

