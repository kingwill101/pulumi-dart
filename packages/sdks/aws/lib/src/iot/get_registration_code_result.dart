// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistrationCode.
class GetRegistrationCodeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// The CA certificate registration code.
  final String? registrationCode;

  /// Creates a new [GetRegistrationCodeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [registrationCode] The CA certificate registration code.
  const GetRegistrationCodeResult({
    this.id,
    this.region,
    this.registrationCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'registrationCode': ?registrationCode,
    };
  }

  factory GetRegistrationCodeResult.fromMap(Map<String, dynamic> map) {
    return GetRegistrationCodeResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationCode: (() { final guardedValue = map['registrationCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
