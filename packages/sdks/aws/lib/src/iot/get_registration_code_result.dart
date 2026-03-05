// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegistrationCode.
class GetRegistrationCodeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// The CA certificate registration code.
  final String registrationCode;

  /// Creates a new [GetRegistrationCodeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [registrationCode] The CA certificate registration code.
  GetRegistrationCodeResult({
    required this.id,
    required this.region,
    required this.registrationCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'registrationCode': registrationCode,
    };
  }

  factory GetRegistrationCodeResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationCodeResult(
      id: map['id'] as String,
      region: map['region'] as String,
      registrationCode: map['registrationCode'] as String,
    );
  }
}
