// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_template_advanced_machine_features.dart';
import 'instance_template_confidential_instance_config.dart';
import 'instance_template_disk.dart';
import 'instance_template_guest_accelerator.dart';
import 'instance_template_network_interface.dart';
import 'instance_template_network_performance_config.dart';
import 'instance_template_reservation_affinity.dart';
import 'instance_template_scheduling.dart';
import 'instance_template_service_account.dart';
import 'instance_template_shielded_instance_config.dart';

/// {@template pulumi_compute_instance_template_instance_template_args_doc}
/// The set of arguments for InstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_template_instance_template_args_doc}
class InstanceTemplateArgs {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateAdvancedMachineFeatures>?
      advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final pulumi.Input<bool>? canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final pulumi.Input<InstanceTemplateConfidentialInstanceConfig>?
      confidentialInstanceConfig;

  /// A brief description of this resource.
  final pulumi.Input<String>? description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final pulumi.Input<List<InstanceTemplateDisk>> disks;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  final pulumi.Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final pulumi.Input<List<InstanceTemplateGuestAccelerator>>? guestAccelerators;

  /// A brief description to use for instances
  /// created from this template.
  final pulumi.Input<String>? instanceDescription;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final pulumi.Input<String>? keyRevocationActionType;

  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  final pulumi.Input<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final pulumi.Input<Map<String, String>>? metadata;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final pulumi.Input<String>? metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final pulumi.Input<String>? minCpuPlatform;

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a `name_prefix` <= 37 characters:
  /// `name_prefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `name_prefix` 38 - 54 characters:
  /// `name_prefix` + YYmmdd + 3 digit incremental counter
  final pulumi.Input<String>? namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceTemplateNetworkInterface>>? networkInterfaces;

  /// (Optional, Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: `machine_type`
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the `image` used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final pulumi.Input<InstanceTemplateNetworkPerformanceConfig>?
      networkPerformanceConfig;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final pulumi.Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  final pulumi.Input<String>? region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceTemplateReservationAffinity>? reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;

  /// - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final pulumi.Input<InstanceTemplateScheduling>? scheduling;

  /// Service account to attach to the instance. Structure is documented below.
  final pulumi.Input<InstanceTemplateServiceAccount>? serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final pulumi.Input<InstanceTemplateShieldedInstanceConfig>?
      shieldedInstanceConfig;

  /// Tags to attach to the instance.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [InstanceTemplateArgs].
  /// [advancedMachineFeatures] Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfig] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [description] A brief description of this resource.
  /// [disks] Disks to attach to instances created from this template.
  /// [enableDisplay] Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [instanceDescription] A brief description to use for instances
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  /// [labels] A set of key/value label pairs to assign to instances
  /// [machineType] The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// [name] The name of the instance template. If you leave
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [networkInterfaces] Networks to attach to instances created from
  /// [networkPerformanceConfig] (Optional, Configures network performance settings for the instance created from the
  /// [partnerMetadata] Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] An instance template is a global resource that is not
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourceManagerTags] A set of key/value resource manager tag pairs to bind to the instances. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  /// [resourcePolicies] - A list of self_links of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy to use. More details about
  /// [serviceAccount] Service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfig] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] Tags to attach to the instance.
  InstanceTemplateArgs({
    InstanceTemplateAdvancedMachineFeatures? advancedMachineFeatures,
    bool? canIpForward,
    InstanceTemplateConfidentialInstanceConfig? confidentialInstanceConfig,
    String? description,
    required List<InstanceTemplateDisk> disks,
    bool? enableDisplay,
    List<InstanceTemplateGuestAccelerator>? guestAccelerators,
    String? instanceDescription,
    String? keyRevocationActionType,
    Map<String, String>? labels,
    required String machineType,
    Map<String, String>? metadata,
    String? metadataStartupScript,
    String? minCpuPlatform,
    String? name,
    String? namePrefix,
    List<InstanceTemplateNetworkInterface>? networkInterfaces,
    InstanceTemplateNetworkPerformanceConfig? networkPerformanceConfig,
    Map<String, String>? partnerMetadata,
    String? project,
    String? region,
    InstanceTemplateReservationAffinity? reservationAffinity,
    Map<String, String>? resourceManagerTags,
    String? resourcePolicies,
    InstanceTemplateScheduling? scheduling,
    InstanceTemplateServiceAccount? serviceAccount,
    InstanceTemplateShieldedInstanceConfig? shieldedInstanceConfig,
    List<String>? tags,
  })  : advancedMachineFeatures = pulumi.Input.asOptionalInput<
            InstanceTemplateAdvancedMachineFeatures>(advancedMachineFeatures),
        canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
        confidentialInstanceConfig = pulumi.Input.asOptionalInput<
                InstanceTemplateConfidentialInstanceConfig>(
            confidentialInstanceConfig),
        description = pulumi.Input.asOptionalInput<String>(description),
        disks = pulumi.Input.asInput<List<InstanceTemplateDisk>>(disks),
        enableDisplay = pulumi.Input.asOptionalInput<bool>(enableDisplay),
        guestAccelerators = pulumi.Input.asOptionalInput<
            List<InstanceTemplateGuestAccelerator>>(guestAccelerators),
        instanceDescription =
            pulumi.Input.asOptionalInput<String>(instanceDescription),
        keyRevocationActionType =
            pulumi.Input.asOptionalInput<String>(keyRevocationActionType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        machineType = pulumi.Input.asInput<String>(machineType),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        metadataStartupScript =
            pulumi.Input.asOptionalInput<String>(metadataStartupScript),
        minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        networkInterfaces = pulumi.Input.asOptionalInput<
            List<InstanceTemplateNetworkInterface>>(networkInterfaces),
        networkPerformanceConfig = pulumi.Input.asOptionalInput<
            InstanceTemplateNetworkPerformanceConfig>(networkPerformanceConfig),
        partnerMetadata =
            pulumi.Input.asOptionalInput<Map<String, String>>(partnerMetadata),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        reservationAffinity =
            pulumi.Input.asOptionalInput<InstanceTemplateReservationAffinity>(
                reservationAffinity),
        resourceManagerTags = pulumi.Input.asOptionalInput<Map<String, String>>(
            resourceManagerTags),
        resourcePolicies =
            pulumi.Input.asOptionalInput<String>(resourcePolicies),
        scheduling = pulumi.Input.asOptionalInput<InstanceTemplateScheduling>(
            scheduling),
        serviceAccount =
            pulumi.Input.asOptionalInput<InstanceTemplateServiceAccount>(
                serviceAccount),
        shieldedInstanceConfig = pulumi.Input.asOptionalInput<
            InstanceTemplateShieldedInstanceConfig>(shieldedInstanceConfig),
        tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = pulumi.Input.mapOptionalInputValue<
              InstanceTemplateAdvancedMachineFeatures, Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceTemplateConfidentialInstanceConfig, Map<String, dynamic>>(
          confidentialInstanceConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['disks'] = pulumi.Input.mapInputValue<List<InstanceTemplateDisk>,
            List<Map<String, dynamic>>>(
        disks,
        (value) =>
            pulumi.Input.encodeList<InstanceTemplateDisk, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceTemplateGuestAccelerator>,
              List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => pulumi.Input.encodeList<InstanceTemplateGuestAccelerator,
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
      map['networkInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceTemplateNetworkInterface>,
              List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => pulumi.Input.encodeList<InstanceTemplateNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = pulumi.Input.mapOptionalInputValue<
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
      map['reservationAffinity'] = pulumi.Input.mapOptionalInputValue<
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
      map['scheduling'] = pulumi.Input.mapOptionalInputValue<
          InstanceTemplateScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = pulumi.Input.mapOptionalInputValue<
          InstanceTemplateServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
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
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : InstanceTemplateAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : InstanceTemplateConfidentialInstanceConfig.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      disks: pulumi.Input.decodeList<InstanceTemplateDisk>(
          map['disks'],
          (value) => InstanceTemplateDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<InstanceTemplateGuestAccelerator>(
              map['guestAccelerators'],
              (value) => InstanceTemplateGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceDescription: map['instanceDescription'] == null
          ? null
          : map['instanceDescription'] as String,
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : map['keyRevocationActionType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      metadataStartupScript: map['metadataStartupScript'] == null
          ? null
          : map['metadataStartupScript'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<InstanceTemplateNetworkInterface>(
              map['networkInterfaces'],
              (value) => InstanceTemplateNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : InstanceTemplateNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      partnerMetadata: map['partnerMetadata'] == null
          ? null
          : (map['partnerMetadata'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : InstanceTemplateReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourceManagerTags: map['resourceManagerTags'] == null
          ? null
          : (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : map['resourcePolicies'] as String,
      scheduling: map['scheduling'] == null
          ? null
          : InstanceTemplateScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : InstanceTemplateServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : InstanceTemplateShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
