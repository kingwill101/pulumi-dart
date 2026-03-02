// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_high_availability_config.dart';
import 'environment_storage_configuration.dart';
import 'environment_timeouts.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  final pulumi.Input<bool>? applyChangesDuringMaintenanceWindow;
  /// ARN of the Environment.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? description;
  /// Engine type must be `microfocus` or `bluage`.
  final pulumi.Input<String>? engineType;
  /// The specific version of the engine for the Environment.
  final pulumi.Input<String>? engineVersion;
  /// The id of the Environment.
  final pulumi.Input<String>? environmentId;
  /// Force update the environment even if applications are running.
  final pulumi.Input<bool>? forceUpdate;
  final pulumi.Input<EnvironmentHighAvailabilityConfig>? highAvailabilityConfig;
  /// M2 Instance Type.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? instanceType;
  /// ARN of the KMS key to use for the Environment.
  final pulumi.Input<String>? kmsKeyId;
  /// ARN of the load balancer created by the Environment.
  final pulumi.Input<String>? loadBalancerArn;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<EnvironmentTimeouts>? timeouts;

  /// Creates a new [EnvironmentState].
  /// [applyChangesDuringMaintenanceWindow] Optional.
  /// [arn] ARN of the Environment.
  /// [description] Optional.
  /// [engineType] Engine type must be `microfocus` or `bluage`.
  /// [engineVersion] The specific version of the engine for the Environment.
  /// [environmentId] The id of the Environment.
  /// [forceUpdate] Force update the environment even if applications are running.
  /// [highAvailabilityConfig] Optional.
  /// [instanceType] M2 Instance Type.
  /// [kmsKeyId] ARN of the KMS key to use for the Environment.
  /// [loadBalancerArn] ARN of the load balancer created by the Environment.
  /// [name] Name of the runtime environment. Must be unique within the account.
  /// [preferredMaintenanceWindow] Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  /// [publiclyAccessible] Allow applications deployed to this environment to be publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] List of security group ids.
  /// [storageConfiguration] Optional.
  /// [subnetIds] List of subnet ids to deploy environment to.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  EnvironmentState({
    this.applyChangesDuringMaintenanceWindow,
    this.arn,
    this.description,
    this.engineType,
    this.engineVersion,
    this.environmentId,
    this.forceUpdate,
    this.highAvailabilityConfig,
    this.instanceType,
    this.kmsKeyId,
    this.loadBalancerArn,
    this.name,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.securityGroupIds,
    this.storageConfiguration,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyChangesDuringMaintenanceWindow': ?applyChangesDuringMaintenanceWindow,
      'arn': ?arn,
      'description': ?description,
      'engineType': ?engineType,
      'engineVersion': ?engineVersion,
      'environmentId': ?environmentId,
      'forceUpdate': ?forceUpdate,
      'highAvailabilityConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentHighAvailabilityConfig, Map<String, dynamic>>(highAvailabilityConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'kmsKeyId': ?kmsKeyId,
      'loadBalancerArn': ?loadBalancerArn,
      'name': ?name,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'storageConfiguration': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfiguration, Map<String, dynamic>>(storageConfiguration, (value) => value.toMap()),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EnvironmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      applyChangesDuringMaintenanceWindow: map['applyChangesDuringMaintenanceWindow'] == null ? null : (map['applyChangesDuringMaintenanceWindow'] as bool).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      engineType: map['engineType'] == null ? null : (map['engineType'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      forceUpdate: map['forceUpdate'] == null ? null : (map['forceUpdate'] as bool).input(),
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : (EnvironmentHighAvailabilityConfig.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>())).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      loadBalancerArn: map['loadBalancerArn'] == null ? null : (map['loadBalancerArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : (map['preferredMaintenanceWindow'] as String).input(),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : (map['publiclyAccessible'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      storageConfiguration: map['storageConfiguration'] == null ? null : (EnvironmentStorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (EnvironmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

