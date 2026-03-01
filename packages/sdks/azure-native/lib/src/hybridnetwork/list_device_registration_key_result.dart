// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDeviceRegistrationKey.
class ListDeviceRegistrationKeyResult {
  /// The registration key for the device.
  final String registrationKey;

  /// Creates a new [ListDeviceRegistrationKeyResult].
  /// [registrationKey] The registration key for the device.
  ListDeviceRegistrationKeyResult({
    required this.registrationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationKey': registrationKey,
    };
  }

  factory ListDeviceRegistrationKeyResult.fromMap(Map<String, dynamic> map) {
    return ListDeviceRegistrationKeyResult(
      registrationKey: map['registrationKey'] as String,
    );
  }
}

