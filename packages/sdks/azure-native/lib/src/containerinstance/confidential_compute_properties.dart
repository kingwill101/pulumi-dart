// ignore_for_file: unused_element, unnecessary_cast


/// The properties for confidential container group
class ConfidentialComputeProperties {
  /// The base64 encoded confidential compute enforcement policy
  final String? ccePolicy;

  /// Creates a new [ConfidentialComputeProperties].
  /// [ccePolicy] The base64 encoded confidential compute enforcement policy
  ConfidentialComputeProperties({
    this.ccePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ccePolicy': ?ccePolicy,
    };
  }

  factory ConfidentialComputeProperties.fromMap(Map<String, dynamic> map) {
    return ConfidentialComputeProperties(
      ccePolicy: map['ccePolicy'] == null ? null : map['ccePolicy'] as String,
    );
  }
}

