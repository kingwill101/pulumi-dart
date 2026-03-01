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
    pulumi.Output<bool>? applyChangesDuringMaintenanceWindow,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engineType,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? environmentId,
    pulumi.Output<bool>? forceUpdate,
    pulumi.Output<EnvironmentHighAvailabilityConfig>? highAvailabilityConfig,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? loadBalancerArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<EnvironmentStorageConfiguration>? storageConfiguration,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<EnvironmentTimeouts>? timeouts,
  }) :
      applyChangesDuringMaintenanceWindow = pulumi.Input.asOptionalInput<bool>(applyChangesDuringMaintenanceWindow),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      forceUpdate = pulumi.Input.asOptionalInput<bool>(forceUpdate),
      highAvailabilityConfig = pulumi.Input.asOptionalInput<EnvironmentHighAvailabilityConfig>(highAvailabilityConfig),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      loadBalancerArn = pulumi.Input.asOptionalInput<String>(loadBalancerArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      storageConfiguration = pulumi.Input.asOptionalInput<EnvironmentStorageConfiguration>(storageConfiguration),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<EnvironmentTimeouts>(timeouts);

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
      applyChangesDuringMaintenanceWindow: map['applyChangesDuringMaintenanceWindow'] == null ? null : pulumi.Output.create<bool>(map['applyChangesDuringMaintenanceWindow'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engineType: map['engineType'] == null ? null : pulumi.Output.create<String>(map['engineType'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      forceUpdate: map['forceUpdate'] == null ? null : pulumi.Output.create<bool>(map['forceUpdate'] as bool),
      highAvailabilityConfig: map['highAvailabilityConfig'] == null ? null : pulumi.Output.create<EnvironmentHighAvailabilityConfig>(EnvironmentHighAvailabilityConfig.fromMap((map['highAvailabilityConfig'] as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      loadBalancerArn: map['loadBalancerArn'] == null ? null : pulumi.Output.create<String>(map['loadBalancerArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      storageConfiguration: map['storageConfiguration'] == null ? null : pulumi.Output.create<EnvironmentStorageConfiguration>(EnvironmentStorageConfiguration.fromMap((map['storageConfiguration'] as Map).cast<String, dynamic>())),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<EnvironmentTimeouts>(EnvironmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

