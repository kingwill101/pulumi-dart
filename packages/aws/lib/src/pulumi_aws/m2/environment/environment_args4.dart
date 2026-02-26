// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_high_availability_config/environment_high_availability_config.dart';
import '../environment_storage_configuration/environment_storage_configuration.dart';
import '../environment_timeouts/environment_timeouts2.dart';

/// The set of arguments for Environment.
class EnvironmentArgs4 {
  final Input<bool>? applyChangesDuringMaintenanceWindow;
  final Input<String>? description;

  /// Engine type must be <span pulumi-lang-nodejs="`microfocus`" pulumi-lang-dotnet="`Microfocus`" pulumi-lang-go="`microfocus`" pulumi-lang-python="`microfocus`" pulumi-lang-yaml="`microfocus`" pulumi-lang-java="`microfocus`">`microfocus`</span> or <span pulumi-lang-nodejs="`bluage`" pulumi-lang-dotnet="`Bluage`" pulumi-lang-go="`bluage`" pulumi-lang-python="`bluage`" pulumi-lang-yaml="`bluage`" pulumi-lang-java="`bluage`">`bluage`</span>.
  final Input<String> engineType;

  /// The specific version of the engine for the Environment.
  final Input<String>? engineVersion;

  /// Force update the environment even if applications are running.
  final Input<bool>? forceUpdate;
  final Input<EnvironmentHighAvailabilityConfig>? highAvailabilityConfig;

  /// M2 Instance Type.
  ///
  /// The following arguments are optional:
  final Input<String> instanceType;

  /// ARN of the KMS key to use for the Environment.
  final Input<String>? kmsKeyId;

  /// Name of the runtime environment. Must be unique within the account.
  final Input<String>? name;

  /// Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format `ddd:hh24:mi-ddd:hh24:mi` and must be less than 24 hours. If not provided a random value will be used.
  final Input<String>? preferredMaintenanceWindow;

  /// Allow applications deployed to this environment to be publicly accessible.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of security group ids.
  final Input<List<String>>? securityGroupIds;
  final Input<EnvironmentStorageConfiguration>? storageConfiguration;

  /// List of subnet ids to deploy environment to.
  final Input<List<String>>? subnetIds;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<EnvironmentTimeouts2>? timeouts;

  EnvironmentArgs4({
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
      map['highAvailabilityConfig'] = Input.mapOptionalInputValue<
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
      map['storageConfiguration'] = Input.mapOptionalInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<EnvironmentTimeouts2,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnvironmentArgs4.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs4(
      applyChangesDuringMaintenanceWindow: Input.asOptionalInput<bool>(
          map['applyChangesDuringMaintenanceWindow']),
      description: Input.asOptionalInput<String>(map['description']),
      engineType: Input.asInput<String>(map['engineType']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      forceUpdate: Input.asOptionalInput<bool>(map['forceUpdate']),
      highAvailabilityConfig:
          Input.asOptionalInput<EnvironmentHighAvailabilityConfig>(
              map['highAvailabilityConfig']),
      instanceType: Input.asInput<String>(map['instanceType']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      storageConfiguration:
          Input.asOptionalInput<EnvironmentStorageConfiguration>(
              map['storageConfiguration']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<EnvironmentTimeouts2>(map['timeouts']),
    );
  }
}
