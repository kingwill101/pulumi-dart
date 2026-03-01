// ignore_for_file: unused_element, unnecessary_cast


/// Instant recovery point additional details.
class InstantRPAdditionalDetailsResponse {
  /// Azure backup resource group name prefix.
  final String? azureBackupRGNamePrefix;
  /// Azure backup resource group name suffix.
  final String? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetailsResponse].
  /// [azureBackupRGNamePrefix] Azure backup resource group name prefix.
  /// [azureBackupRGNameSuffix] Azure backup resource group name suffix.
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

