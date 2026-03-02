// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_storage_configuration_efs.dart';
import 'environment_storage_configuration_fsx.dart';

class EnvironmentStorageConfiguration {
  final pulumi.Input<EnvironmentStorageConfigurationEfs>? efs;
  final pulumi.Input<EnvironmentStorageConfigurationFsx>? fsx;

  /// Creates a new [EnvironmentStorageConfiguration].
  /// [efs] Optional.
  /// [fsx] Optional.
  EnvironmentStorageConfiguration({
    this.efs,
    this.fsx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efs': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfigurationEfs, Map<String, dynamic>>(efs, (value) => value.toMap()),
      'fsx': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfigurationFsx, Map<String, dynamic>>(fsx, (value) => value.toMap()),
    };
  }

  factory EnvironmentStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentStorageConfiguration(
      efs: map['efs'] == null ? null : ((EnvironmentStorageConfigurationEfs.fromMap((map['efs']! as Map).cast<String, dynamic>())).input()).input(),
      fsx: map['fsx'] == null ? null : ((EnvironmentStorageConfigurationFsx.fromMap((map['fsx']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

