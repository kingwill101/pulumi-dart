// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_template_advanced_machine_features/instance_template_advanced_machine_features.dart';
import '../instance_template_confidential_instance_config/instance_template_confidential_instance_config.dart';
import '../instance_template_disk/instance_template_disk.dart';
import '../instance_template_guest_accelerator/instance_template_guest_accelerator.dart';
import '../instance_template_network_interface/instance_template_network_interface.dart';
import '../instance_template_network_performance_config/instance_template_network_performance_config.dart';
import '../instance_template_reservation_affinity/instance_template_reservation_affinity.dart';
import '../instance_template_scheduling/instance_template_scheduling.dart';
import '../instance_template_service_account/instance_template_service_account.dart';
import '../instance_template_shielded_instance_config/instance_template_shielded_instance_config.dart';

/// The set of arguments for InstanceTemplate.
class InstanceTemplateArgs {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final Input<InstanceTemplateAdvancedMachineFeatures>? advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final Input<bool>? canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final Input<InstanceTemplateConfidentialInstanceConfig>?
      confidentialInstanceConfig;

  /// A brief description of this resource.
  final Input<String>? description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final Input<List<InstanceTemplateDisk>> disks;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true in order to update this field.
  final Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final Input<List<InstanceTemplateGuestAccelerator>>? guestAccelerators;

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

  /// The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  final Input<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final Input<Map<String, String>>? metadata;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the<span pulumi-lang-nodejs=" computeInstance " pulumi-lang-dotnet=" ComputeInstance " pulumi-lang-go=" computeInstance " pulumi-lang-python=" compute_instance " pulumi-lang-yaml=" computeInstance " pulumi-lang-java=" computeInstance "> compute_instance </span>resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final Input<String>? metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final Input<String>? minCpuPlatform;

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> <= 37 characters:
  /// <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> 38 - 54 characters:
  /// <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> + YYmmdd + 3 digit incremental counter
  final Input<String>? namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final Input<List<InstanceTemplateNetworkInterface>>? networkInterfaces;

  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span>
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the <span pulumi-lang-nodejs="`image`" pulumi-lang-dotnet="`Image`" pulumi-lang-go="`image`" pulumi-lang-python="`image`" pulumi-lang-yaml="`image`" pulumi-lang-java="`image`">`image`</span> used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final Input<InstanceTemplateNetworkPerformanceConfig>?
      networkPerformanceConfig;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span>
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  final Input<String>? region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final Input<InstanceTemplateReservationAffinity>? reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final Input<Map<String, String>>? resourceManagerTags;

  /// - A list of<span pulumi-lang-nodejs=" selfLinks " pulumi-lang-dotnet=" SelfLinks " pulumi-lang-go=" selfLinks " pulumi-lang-python=" self_links " pulumi-lang-yaml=" selfLinks " pulumi-lang-java=" selfLinks "> self_links </span>of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final Input<String>? resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final Input<InstanceTemplateScheduling>? scheduling;

  /// Service account to attach to the instance. Structure is documented below.
  final Input<InstanceTemplateServiceAccount>? serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`shieldedInstanceConfig`" pulumi-lang-dotnet="`ShieldedInstanceConfig`" pulumi-lang-go="`shieldedInstanceConfig`" pulumi-lang-python="`shielded_instance_config`" pulumi-lang-yaml="`shieldedInstanceConfig`" pulumi-lang-java="`shieldedInstanceConfig`">`shielded_instance_config`</span> can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final Input<InstanceTemplateShieldedInstanceConfig>? shieldedInstanceConfig;

  /// Tags to attach to the instance.
  final Input<List<String>>? tags;

  InstanceTemplateArgs({
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
              InstanceTemplateAdvancedMachineFeatures, Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = Input.mapOptionalInputValue<
              InstanceTemplateConfidentialInstanceConfig, Map<String, dynamic>>(
          confidentialInstanceConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['disks'] = Input.mapInputValue<List<InstanceTemplateDisk>,
            List<Map<String, dynamic>>>(
        disks,
        (value) => Input.encodeList<InstanceTemplateDisk, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = Input.mapOptionalInputValue<
              List<InstanceTemplateGuestAccelerator>,
              List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => Input.encodeList<InstanceTemplateGuestAccelerator,
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
              List<InstanceTemplateNetworkInterface>,
              List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<InstanceTemplateNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              InstanceTemplateNetworkPerformanceConfig, Map<String, dynamic>>(
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
              InstanceTemplateReservationAffinity, Map<String, dynamic>>(
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
          InstanceTemplateScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = Input.mapOptionalInputValue<
          InstanceTemplateServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              InstanceTemplateShieldedInstanceConfig, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory InstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateArgs(
      advancedMachineFeatures:
          Input.asOptionalInput<InstanceTemplateAdvancedMachineFeatures>(
              map['advancedMachineFeatures']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig:
          Input.asOptionalInput<InstanceTemplateConfidentialInstanceConfig>(
              map['confidentialInstanceConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asInput<List<InstanceTemplateDisk>>(map['disks']),
      enableDisplay: Input.asOptionalInput<bool>(map['enableDisplay']),
      guestAccelerators:
          Input.asOptionalInput<List<InstanceTemplateGuestAccelerator>>(
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
          Input.asOptionalInput<List<InstanceTemplateNetworkInterface>>(
              map['networkInterfaces']),
      networkPerformanceConfig:
          Input.asOptionalInput<InstanceTemplateNetworkPerformanceConfig>(
              map['networkPerformanceConfig']),
      partnerMetadata:
          Input.asOptionalInput<Map<String, String>>(map['partnerMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      reservationAffinity:
          Input.asOptionalInput<InstanceTemplateReservationAffinity>(
              map['reservationAffinity']),
      resourceManagerTags: Input.asOptionalInput<Map<String, String>>(
          map['resourceManagerTags']),
      resourcePolicies: Input.asOptionalInput<String>(map['resourcePolicies']),
      scheduling:
          Input.asOptionalInput<InstanceTemplateScheduling>(map['scheduling']),
      serviceAccount: Input.asOptionalInput<InstanceTemplateServiceAccount>(
          map['serviceAccount']),
      shieldedInstanceConfig:
          Input.asOptionalInput<InstanceTemplateShieldedInstanceConfig>(
              map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
