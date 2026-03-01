// ignore_for_file: unused_element, unnecessary_cast


/// The properties for confidential container group
class ConfidentialComputePropertiesResponse {
  /// The base64 encoded confidential compute enforcement policy
  final String? ccePolicy;

  /// Creates a new [ConfidentialComputePropertiesResponse].
  /// [ccePolicy] The base64 encoded confidential compute enforcement policy
  ConfidentialComputePropertiesResponse({
    this.ccePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccePolicy': ?ccePolicy,
    };
  }

  factory ConfidentialComputePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialComputePropertiesResponse(
      ccePolicy: map['ccePolicy'] == null ? null : map['ccePolicy'] as String,
    );
  }
}

