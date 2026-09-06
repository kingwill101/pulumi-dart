// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDeviceRegistrationKey.
class ListDeviceRegistrationKeyResult {
  /// The registration key for the device.
  final String? registrationKey;

  /// Creates a new [ListDeviceRegistrationKeyResult].
  /// [registrationKey] The registration key for the device.
  const ListDeviceRegistrationKeyResult({
    this.registrationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationKey': ?registrationKey,
    };
  }

  factory ListDeviceRegistrationKeyResult.fromMap(Map<String, dynamic> map) {
    return ListDeviceRegistrationKeyResult(
      registrationKey: (() { final guardedValue = map['registrationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
