// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workstation_config_host_gce_instance_accelerator/workstation_config_host_gce_instance_accelerator.dart';
import '../workstation_config_host_gce_instance_boost_config/workstation_config_host_gce_instance_boost_config.dart';
import '../workstation_config_host_gce_instance_confidential_instance_config/workstation_config_host_gce_instance_confidential_instance_config.dart';
import '../workstation_config_host_gce_instance_shielded_instance_config/workstation_config_host_gce_instance_shielded_instance_config.dart';

class WorkstationConfigHostGceInstance {
  /// An accelerator card attached to the instance.
  /// Structure is documented below.
  final List<WorkstationConfigHostGceInstanceAccelerator>? accelerators;

  /// A list of the boost configurations that workstations created using this workstation configuration are allowed to use.
  /// Structure is documented below.
  final List<WorkstationConfigHostGceInstanceBoostConfig>? boostConfigs;

  /// Size of the boot disk in GB.
  final int? bootDiskSizeGb;

  /// A set of Compute Engine Confidential VM instance options.
  /// Structure is documented below.
  final WorkstationConfigHostGceInstanceConfidentialInstanceConfig?
      confidentialInstanceConfig;

  /// Whether instances have no public IP address.
  final bool? disablePublicIpAddresses;

  /// Whether to disable SSH access to the VM.
  final bool? disableSsh;

  /// Whether to enable nested virtualization on the Compute Engine VMs backing the Workstations.
  /// See https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
  final bool? enableNestedVirtualization;

  /// The name of a Compute Engine machine type.
  final String? machineType;

  /// Number of instances to pool for faster workstation startup.
  final int? poolSize;

  /// Email address of the service account that will be used on VM instances used to support this config. This service account must have permission to pull the specified container image. If not set, VMs will run without a service account, in which case the image must be publicly accessible.
  final String? serviceAccount;

  /// Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  final List<String>? serviceAccountScopes;

  /// A set of Compute Engine Shielded instance options.
  /// Structure is documented below.
  final WorkstationConfigHostGceInstanceShieldedInstanceConfig?
      shieldedInstanceConfig;

  /// Network tags to add to the Compute Engine machines backing the Workstations.
  final List<String>? tags;

  /// Resource manager tags to be bound to the VM instances backing the Workstations.
  /// Tag keys and values have the same definition as
  /// https://docs.cloud.google.com/resource-manager/docs/tags/tags-overview
  /// Keys must be in the format `tagKeys/{tag_key_id}`, and
  /// values are in the format `tagValues/456`.
  final Map<String, String>? vmTags;

  WorkstationConfigHostGceInstance({
    this.accelerators,
    this.boostConfigs,
    this.bootDiskSizeGb,
    this.confidentialInstanceConfig,
    this.disablePublicIpAddresses,
    this.disableSsh,
    this.enableNestedVirtualization,
    this.machineType,
    this.poolSize,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = pulumi.Input.encodeList<
          WorkstationConfigHostGceInstanceAccelerator,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final boostConfigsValue = boostConfigs;
    if (boostConfigsValue != null) {
      map['boostConfigs'] = pulumi.Input.encodeList<
          WorkstationConfigHostGceInstanceBoostConfig,
          Map<String, dynamic>>(boostConfigsValue, (value) => value.toMap());
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
    final disablePublicIpAddressesValue = disablePublicIpAddresses;
    if (disablePublicIpAddressesValue != null) {
      map['disablePublicIpAddresses'] = disablePublicIpAddressesValue;
    }
    final disableSshValue = disableSsh;
    if (disableSshValue != null) {
      map['disableSsh'] = disableSshValue;
    }
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final poolSizeValue = poolSize;
    if (poolSizeValue != null) {
      map['poolSize'] = poolSizeValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final serviceAccountScopesValue = serviceAccountScopes;
    if (serviceAccountScopesValue != null) {
      map['serviceAccountScopes'] = serviceAccountScopesValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vmTagsValue = vmTags;
    if (vmTagsValue != null) {
      map['vmTags'] = vmTagsValue;
    }
    return map;
  }

  factory WorkstationConfigHostGceInstance.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstance(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<
                  WorkstationConfigHostGceInstanceAccelerator>(
              map['accelerators'],
              (value) => WorkstationConfigHostGceInstanceAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      boostConfigs: map['boostConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  WorkstationConfigHostGceInstanceBoostConfig>(
              map['boostConfigs'],
              (value) => WorkstationConfigHostGceInstanceBoostConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : WorkstationConfigHostGceInstanceConfidentialInstanceConfig.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      disablePublicIpAddresses: map['disablePublicIpAddresses'] == null
          ? null
          : map['disablePublicIpAddresses'] as bool,
      disableSsh: map['disableSsh'] == null ? null : map['disableSsh'] as bool,
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      poolSize: map['poolSize'] == null ? null : map['poolSize'] as int,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : WorkstationConfigHostGceInstanceShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      vmTags: map['vmTags'] == null
          ? null
          : (map['vmTags'] as Map).cast<String, String>(),
    );
  }
}
