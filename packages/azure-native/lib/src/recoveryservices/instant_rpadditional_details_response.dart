// ignore_for_file: unused_element, unnecessary_cast


class InstantRPAdditionalDetailsResponse {
  final String? azureBackupRGNamePrefix;
  final String? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetailsResponse].
  /// [azureBackupRGNamePrefix] Optional.
  /// [azureBackupRGNameSuffix] Optional.
  InstantRPAdditionalDetailsResponse({
    this.azureBackupRGNamePrefix,
    this.azureBackupRGNameSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBackupRGNamePrefix': ?azureBackupRGNamePrefix,
      'azureBackupRGNameSuffix': ?azureBackupRGNameSuffix,
    };
  }

  factory InstantRPAdditionalDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InstantRPAdditionalDetailsResponse(
      azureBackupRGNamePrefix: map['azureBackupRGNamePrefix'] == null ? null : map['azureBackupRGNamePrefix'] as String,
      azureBackupRGNameSuffix: map['azureBackupRGNameSuffix'] == null ? null : map['azureBackupRGNameSuffix'] as String,
    );
  }
}

