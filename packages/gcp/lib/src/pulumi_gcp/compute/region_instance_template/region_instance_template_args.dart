// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_instance_template_advanced_machine_features/region_instance_template_advanced_machine_features.dart';
import '../region_instance_template_confidential_instance_config/region_instance_template_confidential_instance_config.dart';
import '../region_instance_template_disk/region_instance_template_disk.dart';
import '../region_instance_template_guest_accelerator/region_instance_template_guest_accelerator.dart';
import '../region_instance_template_network_interface/region_instance_template_network_interface.dart';
import '../region_instance_template_network_performance_config/region_instance_template_network_performance_config.dart';
import '../region_instance_template_reservation_affinity/region_instance_template_reservation_affinity.dart';
import '../region_instance_template_scheduling/region_instance_template_scheduling.dart';
import '../region_instance_template_service_account/region_instance_template_service_account.dart';
import '../region_instance_template_shielded_instance_config/region_instance_template_shielded_instance_config.dart';

/// The set of arguments for RegionInstanceTemplate.
class RegionInstanceTemplateArgs {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final Input<RegionInstanceTemplateAdvancedMachineFeatures>?
      advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final Input<bool>? canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final Input<RegionInstanceTemplateConfidentialInstanceConfig>?
      confidentialInstanceConfig;

  /// A brief description of this resource.
  final Input<String>? description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final Input<List<RegionInstanceTemplateDisk>> disks;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  final Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final Input<List<RegionInstanceTemplateGuestAccelerator>>? guestAccelerators;

  /// A brief description to use for instances
  /// created from this template.
  final Input<String>? instanceDescription;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final Input<String>? keyRevocationActionType;

  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// - - -
  final Input<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final Input<Map<String, String>>? metadata;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final Input<String>? metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final Input<String>? minCpuPlatform;
  final Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final Input<String>? namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final Input<List<RegionInstanceTemplateNetworkInterface>>? networkInterfaces;

  /// Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final Input<RegionInstanceTemplateNetworkPerformanceConfig>?
      networkPerformanceConfig;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The Region in which the resource belongs.
  /// If region is not provided, the provider region is used.
  final Input<String>? region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final Input<RegionInstanceTemplateReservationAffinity>? reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final Input<Map<String, String>>? resourceManagerTags;

  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final Input<String>? resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final Input<RegionInstanceTemplateScheduling>? scheduling;

  /// Service account to attach to the instance. Structure is documented below.
  final Input<RegionInstanceTemplateServiceAccount>? serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final Input<RegionInstanceTemplateShieldedInstanceConfig>?
      shieldedInstanceConfig;

  /// Tags to attach to the instance.
  final Input<List<String>>? tags;

  RegionInstanceTemplateArgs({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.description,
    required this.disks,
    this.enableDisplay,
    this.guestAccelerators,
    this.instanceDescription,
    this.keyRevocationActionType,
    this.labels,
    required this.machineType,
    this.metadata,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    this.namePrefix,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.partnerMetadata,
    this.project,
    this.region,
    this.reservationAffinity,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = Input.mapOptionalInputValue<
              RegionInstanceTemplateAdvancedMachineFeatures,
              Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = Input.mapOptionalInputValue<
              RegionInstanceTemplateConfidentialInstanceConfig,
              Map<String, dynamic>>(
          confidentialInstanceConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['disks'] = Input.mapInputValue<List<RegionInstanceTemplateDisk>,
            List<Map<String, dynamic>>>(
        disks,
        (value) =>
            Input.encodeList<RegionInstanceTemplateDisk, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = Input.mapOptionalInputValue<
              List<RegionInstanceTemplateGuestAccelerator>,
              List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => Input.encodeList<RegionInstanceTemplateGuestAccelerator,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final instanceDescriptionValue = instanceDescription;
    if (instanceDescriptionValue != null) {
      map['instanceDescription'] = instanceDescriptionValue;
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] = keyRevocationActionTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['machineType'] = machineType;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metadataStartupScriptValue = metadataStartupScript;
    if (metadataStartupScriptValue != null) {
      map['metadataStartupScript'] = metadataStartupScriptValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.mapOptionalInputValue<
              List<RegionInstanceTemplateNetworkInterface>,
              List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<RegionInstanceTemplateNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              RegionInstanceTemplateNetworkPerformanceConfig,
              Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = partnerMetadataValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = Input.mapOptionalInputValue<
              RegionInstanceTemplateReservationAffinity, Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final resourceManagerTagsValue = resourceManagerTags;
    if (resourceManagerTagsValue != null) {
      map['resourceManagerTags'] = resourceManagerTagsValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = Input.mapOptionalInputValue<
          RegionInstanceTemplateScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = Input.mapOptionalInputValue<
          RegionInstanceTemplateServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              RegionInstanceTemplateShieldedInstanceConfig,
              Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateArgs(
      advancedMachineFeatures:
          Input.asOptionalInput<RegionInstanceTemplateAdvancedMachineFeatures>(
              map['advancedMachineFeatures']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig: Input.asOptionalInput<
              RegionInstanceTemplateConfidentialInstanceConfig>(
          map['confidentialInstanceConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asInput<List<RegionInstanceTemplateDisk>>(map['disks']),
      enableDisplay: Input.asOptionalInput<bool>(map['enableDisplay']),
      guestAccelerators:
          Input.asOptionalInput<List<RegionInstanceTemplateGuestAccelerator>>(
              map['guestAccelerators']),
      instanceDescription:
          Input.asOptionalInput<String>(map['instanceDescription']),
      keyRevocationActionType:
          Input.asOptionalInput<String>(map['keyRevocationActionType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: Input.asInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      metadataStartupScript:
          Input.asOptionalInput<String>(map['metadataStartupScript']),
      minCpuPlatform: Input.asOptionalInput<String>(map['minCpuPlatform']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      networkInterfaces:
          Input.asOptionalInput<List<RegionInstanceTemplateNetworkInterface>>(
              map['networkInterfaces']),
      networkPerformanceConfig:
          Input.asOptionalInput<RegionInstanceTemplateNetworkPerformanceConfig>(
              map['networkPerformanceConfig']),
      partnerMetadata:
          Input.asOptionalInput<Map<String, String>>(map['partnerMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      reservationAffinity:
          Input.asOptionalInput<RegionInstanceTemplateReservationAffinity>(
              map['reservationAffinity']),
      resourceManagerTags: Input.asOptionalInput<Map<String, String>>(
          map['resourceManagerTags']),
      resourcePolicies: Input.asOptionalInput<String>(map['resourcePolicies']),
      scheduling: Input.asOptionalInput<RegionInstanceTemplateScheduling>(
          map['scheduling']),
      serviceAccount:
          Input.asOptionalInput<RegionInstanceTemplateServiceAccount>(
              map['serviceAccount']),
      shieldedInstanceConfig:
          Input.asOptionalInput<RegionInstanceTemplateShieldedInstanceConfig>(
              map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
