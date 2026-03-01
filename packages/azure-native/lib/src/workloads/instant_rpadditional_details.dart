// ignore_for_file: unused_element, unnecessary_cast


/// Instant recovery point additional details.
class InstantRPAdditionalDetails {
  /// Azure backup resource group name prefix.
  final String? azureBackupRGNamePrefix;
  /// Azure backup resource group name suffix.
  final String? azureBackupRGNameSuffix;

  /// Creates a new [InstantRPAdditionalDetails].
  /// [azureBackupRGNamePrefix] Azure backup resource group name prefix.
  /// [azureBackupRGNameSuffix] Azure backup resource group name suffix.
  InstantRPAdditionalDetails({
    this.azureBackupRGNamePrefix,
    this.azureBackupRGNameSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBackupRGNamePrefix': ?azureBackupRGNamePrefix,
      'azureBackupRGNameSuffix': ?azureBackupRGNameSuffix,
    };
  }

  factory InstantRPAdditionalDetails.fromMap(Map<String, dynamic> map) {
    return InstantRPAdditionalDetails(
      azureBackupRGNamePrefix: map['azureBackupRGNamePrefix'] == null ? null : map['azureBackupRGNamePrefix'] as String,
      azureBackupRGNameSuffix: map['azureBackupRGNameSuffix'] == null ? null : map['azureBackupRGNameSuffix'] as String,
    );
  }
}

