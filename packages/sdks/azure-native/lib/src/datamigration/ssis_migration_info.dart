// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSIS migration info with SSIS store type, overwrite policy.
class SsisMigrationInfo {
  /// The overwrite option for the SSIS environment migration
  final pulumi.Input<dynamic>? environmentOverwriteOption;
  /// The overwrite option for the SSIS project migration
  final pulumi.Input<dynamic>? projectOverwriteOption;
  /// The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  final pulumi.Input<dynamic>? ssisStoreType;

  /// Creates a new [SsisMigrationInfo].
  /// [environmentOverwriteOption] The overwrite option for the SSIS environment migration
  /// [projectOverwriteOption] The overwrite option for the SSIS project migration
  /// [ssisStoreType] The SSIS store type of source, only SSIS catalog is supported now in DMS (classic)
  const SsisMigrationInfo({
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
      environmentOverwriteOption: (() { final guardedValue = map['environmentOverwriteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      projectOverwriteOption: (() { final guardedValue = map['projectOverwriteOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ssisStoreType: (() { final guardedValue = map['ssisStoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
