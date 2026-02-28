// ignore_for_file: unused_element, unnecessary_cast

import 'environment_storage_configuration_efs.dart';
import 'environment_storage_configuration_fsx.dart';

class EnvironmentStorageConfiguration {
  final EnvironmentStorageConfigurationEfs? efs;
  final EnvironmentStorageConfigurationFsx? fsx;

  /// Creates a new [EnvironmentStorageConfiguration].
  /// [efs] Optional.
  /// [fsx] Optional.
  EnvironmentStorageConfiguration({
    this.efs,
    this.fsx,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final efsValue = efs;
    if (efsValue != null) {
      map['efs'] = efsValue.toMap();
    }
    final fsxValue = fsx;
    if (fsxValue != null) {
      map['fsx'] = fsxValue.toMap();
    }
    return map;
  }

  factory EnvironmentStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfiguration(
      efs: map['efs'] == null
          ? null
          : EnvironmentStorageConfigurationEfs.fromMap(
              (map['efs'] as Map).cast<String, dynamic>()),
      fsx: map['fsx'] == null
          ? null
          : EnvironmentStorageConfigurationFsx.fromMap(
              (map['fsx'] as Map).cast<String, dynamic>()),
    );
  }
}
