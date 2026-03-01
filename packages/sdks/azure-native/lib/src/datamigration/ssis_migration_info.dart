// ignore_for_file: unused_element, unnecessary_cast


/// SSIS migration info with SSIS store type, overwrite policy.
class SsisMigrationInfo {
  /// The overwrite option for the SSIS environment migration
  final String? environmentOverwriteOption;
  /// The overwrite option for the SSIS project migration
  final String? projectOverwriteOption;
  /// The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  final String? ssisStoreType;

  /// Creates a new [SsisMigrationInfo].
  /// [environmentOverwriteOption] The overwrite option for the SSIS environment migration
  /// [projectOverwriteOption] The overwrite option for the SSIS project migration
  /// [ssisStoreType] The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  SsisMigrationInfo({
    this.environmentOverwriteOption,
    this.projectOverwriteOption,
    this.ssisStoreType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentOverwriteOption': ?environmentOverwriteOption,
      'projectOverwriteOption': ?projectOverwriteOption,
      'ssisStoreType': ?ssisStoreType,
    };
  }

  factory SsisMigrationInfo.fromMap(Map<String, dynamic> map) {
    return SsisMigrationInfo(
      environmentOverwriteOption: map['environmentOverwriteOption'] == null ? null : map['environmentOverwriteOption'] as String,
      projectOverwriteOption: map['projectOverwriteOption'] == null ? null : map['projectOverwriteOption'] as String,
      ssisStoreType: map['ssisStoreType'] == null ? null : map['ssisStoreType'] as String,
    );
  }
}

