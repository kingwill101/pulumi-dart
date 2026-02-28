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
  EnvironmentArgs({
    bool? applyChangesDuringMaintenanceWindow,
    String? description,
    required String engineType,
    String? engineVersion,
    bool? forceUpdate,
    EnvironmentHighAvailabilityConfig? highAvailabilityConfig,
    required String instanceType,
    String? kmsKeyId,
    String? name,
    String? preferredMaintenanceWindow,
    bool? publiclyAccessible,
    String? region,
    List<String>? securityGroupIds,
    EnvironmentStorageConfiguration? storageConfiguration,
    List<String>? subnetIds,
    Map<String, String>? tags,
    EnvironmentTimeouts? timeouts,
  })  : applyChangesDuringMaintenanceWindow =
            pulumi.Input.asOptionalInput<bool>(
                applyChangesDuringMaintenanceWindow),
        description = pulumi.Input.asOptionalInput<String>(description),
        engineType = pulumi.Input.asInput<String>(engineType),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        forceUpdate = pulumi.Input.asOptionalInput<bool>(forceUpdate),
        highAvailabilityConfig =
            pulumi.Input.asOptionalInput<EnvironmentHighAvailabilityConfig>(
                highAvailabilityConfig),
        instanceType = pulumi.Input.asInput<String>(instanceType),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        name = pulumi.Input.asOptionalInput<String>(name),
        preferredMaintenanceWindow =
            pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
        publiclyAccessible =
            pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        storageConfiguration =
            pulumi.Input.asOptionalInput<EnvironmentStorageConfiguration>(
                storageConfiguration),
        subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<EnvironmentTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyChangesDuringMaintenanceWindowValue =
        applyChangesDuringMaintenanceWindow;
    if (applyChangesDuringMaintenanceWindowValue != null) {
      map['applyChangesDuringMaintenanceWindow'] =
          applyChangesDuringMaintenanceWindowValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['engineType'] = engineType;
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final forceUpdateValue = forceUpdate;
    if (forceUpdateValue != null) {
      map['forceUpdate'] = forceUpdateValue;
    }
    final highAvailabilityConfigValue = highAvailabilityConfig;
    if (highAvailabilityConfigValue != null) {
      map['highAvailabilityConfig'] = pulumi.Input.mapOptionalInputValue<
              EnvironmentHighAvailabilityConfig, Map<String, dynamic>>(
          highAvailabilityConfigValue, (value) => value.toMap());
    }
    map['instanceType'] = instanceType;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final storageConfigurationValue = storageConfiguration;
    if (storageConfigurationValue != null) {
      map['storageConfiguration'] = pulumi.Input.mapOptionalInputValue<
              EnvironmentStorageConfiguration, Map<String, dynamic>>(
          storageConfigurationValue, (value) => value.toMap());
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<EnvironmentTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      applyChangesDuringMaintenanceWindow:
          map['applyChangesDuringMaintenanceWindow'] == null
              ? null
              : map['applyChangesDuringMaintenanceWindow'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      engineType: map['engineType'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      forceUpdate:
          map['forceUpdate'] == null ? null : map['forceUpdate'] as bool,
      highAvailabilityConfig: map['highAvailabilityConfig'] == null
          ? null
          : EnvironmentHighAvailabilityConfig.fromMap(
              (map['highAvailabilityConfig'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      storageConfiguration: map['storageConfiguration'] == null
          ? null
          : EnvironmentStorageConfiguration.fromMap(
              (map['storageConfiguration'] as Map).cast<String, dynamic>()),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : EnvironmentTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
