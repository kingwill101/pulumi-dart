// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_debug_hook_config_collection_configuration.dart';

class TrainingJobDebugHookConfig {
  /// List of tensor collections to configure for the debug hook. Maximum of 20. See `collectionConfigurations` below.
  final pulumi.Input<List<TrainingJobDebugHookConfigCollectionConfiguration>?>? collectionConfigurations;
  /// Map of parameters for the debug hook. Maximum of 20 entries.
  final pulumi.Input<Map<String, String>?>? hookParameters;
  /// Local path where debug output is written.
  final pulumi.Input<String?>? localPath;
  /// S3 URI where debug output is stored.
  final pulumi.Input<String> s3OutputPath;

  /// Creates a new [TrainingJobDebugHookConfig].
  /// [collectionConfigurations] List of tensor collections to configure for the debug hook. Maximum of 20. See `collectionConfigurations` below.
  /// [hookParameters] Map of parameters for the debug hook. Maximum of 20 entries.
  /// [localPath] Local path where debug output is written.
  /// [s3OutputPath] S3 URI where debug output is stored.
  const TrainingJobDebugHookConfig({
    this.collectionConfigurations,
    this.hookParameters,
    this.localPath,
    required this.s3OutputPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TrainingJobDebugHookConfigCollectionConfiguration>, List<Map<String, dynamic>>>(collectionConfigurations, (value) => pulumi.Input.encodeList<TrainingJobDebugHookConfigCollectionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hookParameters': ?hookParameters,
      'localPath': ?localPath,
      's3OutputPath': s3OutputPath,
    };
  }

  factory TrainingJobDebugHookConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobDebugHookConfig(
      collectionConfigurations: (() { final guardedValue = map['collectionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrainingJobDebugHookConfigCollectionConfiguration>(guardedValue, (value) => TrainingJobDebugHookConfigCollectionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hookParameters: (() { final guardedValue = map['hookParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3OutputPath: pulumi.Input.fromValue(map['s3OutputPath'] as String),
    );
  }
}
