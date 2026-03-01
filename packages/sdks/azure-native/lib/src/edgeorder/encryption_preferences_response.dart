// ignore_for_file: unused_element, unnecessary_cast


/// Preferences related to the double encryption.
class EncryptionPreferencesResponse {
  /// Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
  final String? doubleEncryptionStatus;

  /// Creates a new [EncryptionPreferencesResponse].
  /// [doubleEncryptionStatus] Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
  EncryptionPreferencesResponse({
    this.doubleEncryptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleEncryptionStatus': ?doubleEncryptionStatus,
    };
  }

  factory EncryptionPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPreferencesResponse(
      doubleEncryptionStatus: map['doubleEncryptionStatus'] == null ? null : map['doubleEncryptionStatus'] as String,
    );
  }
}

