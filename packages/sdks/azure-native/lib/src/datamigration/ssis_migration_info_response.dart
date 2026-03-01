// ignore_for_file: unused_element, unnecessary_cast


/// SSIS migration info with SSIS store type, overwrite policy.
class SsisMigrationInfoResponse {
  /// The overwrite option for the SSIS environment migration
  final String? environmentOverwriteOption;
  /// The overwrite option for the SSIS project migration
  final String? projectOverwriteOption;
  /// The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  final String? ssisStoreType;

  /// Creates a new [SsisMigrationInfoResponse].
  /// [environmentOverwriteOption] The overwrite option for the SSIS environment migration
  /// [projectOverwriteOption] The overwrite option for the SSIS project migration
  /// [ssisStoreType] The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  SsisMigrationInfoResponse({
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

  factory SsisMigrationInfoResponse.fromMap(Map<String, dynamic> map) {
    return SsisMigrationInfoResponse(
      environmentOverwriteOption: map['environmentOverwriteOption'] == null ? null : map['environmentOverwriteOption'] as String,
      projectOverwriteOption: map['projectOverwriteOption'] == null ? null : map['projectOverwriteOption'] as String,
      ssisStoreType: map['ssisStoreType'] == null ? null : map['ssisStoreType'] as String,
    );
  }
}

