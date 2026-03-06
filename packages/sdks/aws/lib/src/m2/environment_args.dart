// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_high_availability_config.dart';
import 'environment_storage_configuration.dart';
import 'environment_timeouts.dart';

/// {@template pulumi_m2_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_m2_environment_environment_args_doc}
class EnvironmentArgs {
  final pulumi.Input<bool>? applyChangesDuringMaintenanceWindow;
  final pulumi.Input<String>? description;
  /// Engine type must be `microfocus` or `bluage`.
  final pulumi.Input<String> engineType;
  /// The specific version of the engine for the Environment.
  final pulumi.Input<String>? engineVersion;
  /// Force update the environment even if applications are running.
  final pulumi.Input<bool>? forceUpdate;
  final pulumi.Input<EnvironmentHighAvailabilityConfig>? highAvailabilityConfig;
  /// M2 Instance Type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> instanceType;
  /// ARN of the KMS key to use for the Environment.
  final pulumi.Input<String>? kmsKeyId;
  /// Name of the runtime environment. Must be unique within the account.
  final pulumi.Input<String>? name;
  /// Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Allow applications deployed to this environment to be publicly accessible.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of security group ids.
  final pulumi.Input<List<String>>? securityGroupIds;
  final pulumi.Input<EnvironmentStorageConfiguration>? storageConfiguration;
  /// List of subnet ids to deploy environment to.
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<EnvironmentTimeouts>? timeouts;

  /// Creates a new [EnvironmentArgs].
  /// [applyChangesDuringMaintenanceWindow] Optional.
  /// [description] Optional.
  /// [engineType] Engine type must be `microfocus` or `bluage`.
  /// [engineVersion] The specific version of the engine for the Environment.
  /// [forceUpdate] Force update the environment even if applications are running.
  /// [highAvailabilityConfig] Optional.
  /// [instanceType] M2 Instance Type.
  /// [kmsKeyId] ARN of the KMS key to use for the Environment.
  /// [name] Name of the runtime environment. Must be unique within the account.
  /// [preferredMaintenanceWindow] Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  /// [publiclyAccessible] Allow applications deployed to this environment to be publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] List of security group ids.
  /// [storageConfiguration] Optional.
  /// [subnetIds] List of subnet ids to deploy environment to.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const EnvironmentArgs({
    this.applyChangesDuringMaintenanceWindow,
    this.description,
    required this.engineType,
    this.engineVersion,
    this.forceUpdate,
    this.highAvailabilityConfig,
    required this.instanceType,
    this.kmsKeyId,
    this.name,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.securityGroupIds,
    this.storageConfiguration,
    this.subnetIds,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyChangesDuringMaintenanceWindow': ?applyChangesDuringMaintenanceWindow,
      'description': ?description,
      'engineType': engineType,
      'engineVersion': ?engineVersion,
      'forceUpdate': ?forceUpdate,
      'highAvailabilityConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentHighAvailabilityConfig, Map<String, dynamic>>(highAvailabilityConfig, (value) => value.toMap()),
      'instanceType': instanceType,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EnvironmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      applyChangesDuringMaintenanceWindow: (() { final guardedValue = map['applyChangesDuringMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      highAvailabilityConfig: (() { final guardedValue = map['highAvailabilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentHighAvailabilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageConfiguration: (() { final guardedValue = map['storageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

