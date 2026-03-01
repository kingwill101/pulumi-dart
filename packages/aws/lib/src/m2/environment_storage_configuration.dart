// ignore_for_file: unused_element, unnecessary_cast

import 'environment_storage_configuration_efs.dart';
import 'environment_storage_configuration_fsx.dart';

class EnvironmentStorageConfiguration {
  final EnvironmentStorageConfigurationEfs? efs;
  final EnvironmentStorageConfigurationFsx? fsx;

  /// Creates a new [EnvironmentStorageConfiguration].
  /// [efs] Optional.
  /// [fsx] Optional.
  EnvironmentStorageConfiguration({this.efs, this.fsx});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efs': ?efs == null ? null : efs!.toMap(),
      'fsx': ?fsx == null ? null : fsx!.toMap(),
    };
  }

  factory EnvironmentStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfiguration(
      efs: map['efs'] == null
          ? null
          : EnvironmentStorageConfigurationEfs.fromMap(
              (map['efs'] as Map).cast<String, dynamic>(),
            ),
      fsx: map['fsx'] == null
          ? null
          : EnvironmentStorageConfigurationFsx.fromMap(
              (map['fsx'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
