// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_high_availability_config/environment_high_availability_config.dart';
import '../environment_storage_configuration/environment_storage_configuration.dart';
import '../environment_timeouts/environment_timeouts_m2.dart';

/// The set of arguments for Environment.
class EnvironmentM2Args {
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
  final pulumi.Input<EnvironmentTimeoutsM2>? timeouts;

  EnvironmentM2Args({
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          EnvironmentTimeoutsM2,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentM2Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentM2Args(
      applyChangesDuringMaintenanceWindow: pulumi.Input.asOptionalInput<bool>(
          map['applyChangesDuringMaintenanceWindow']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      engineType: pulumi.Input.asInput<String>(map['engineType']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      forceUpdate: pulumi.Input.asOptionalInput<bool>(map['forceUpdate']),
      highAvailabilityConfig:
          pulumi.Input.asOptionalInput<EnvironmentHighAvailabilityConfig>(
              map['highAvailabilityConfig']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      storageConfiguration:
          pulumi.Input.asOptionalInput<EnvironmentStorageConfiguration>(
              map['storageConfiguration']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<EnvironmentTimeoutsM2>(map['timeouts']),
    );
  }
}
