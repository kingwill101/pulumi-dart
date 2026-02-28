// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_advanced_machine_feature.dart';
import 'get_instance_template_confidential_instance_config.dart';
import 'get_instance_template_disk.dart';
import 'get_instance_template_guest_accelerator.dart';
import 'get_instance_template_network_interface.dart';
import 'get_instance_template_network_performance_config.dart';
import 'get_instance_template_reservation_affinity.dart';
import 'get_instance_template_scheduling.dart';
import 'get_instance_template_service_account.dart';
import 'get_instance_template_shielded_instance_config.dart';

/// Result data returned by getInstanceTemplate.
class GetInstanceTemplateResult {
  final List<GetInstanceTemplateAdvancedMachineFeature> advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  final bool canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final List<GetInstanceTemplateConfidentialInstanceConfig>
      confidentialInstanceConfigs;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// A brief description of this resource.
  final String description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  final List<GetInstanceTemplateDisk> disks;
  final Map<String, String> effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: `allow_stopping_for_update` must be set to true in order to update this field.
  final bool enableDisplay;
  final String? filter;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  final List<GetInstanceTemplateGuestAccelerator> guestAccelerators;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A brief description to use for instances
  /// created from this template.
  final String instanceDescription;

  /// Action to be taken when a customer's encryption key is revoked.
  final String keyRevocationActionType;

  /// (Optional) A set of ket/value label pairs to assign to disk created from
  /// this template
  final Map<String, String> labels;

  /// The machine type to create.
  final String machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  final Map<String, String> metadata;

  /// The unique fingerprint of the metadata.
  final String metadataFingerprint;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the compute_instance resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  final String metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  final String minCpuPlatform;
  final bool? mostRecent;

  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final String? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final String namePrefix;

  /// The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.  s
  final List<GetInstanceTemplateNetworkInterface> networkInterfaces;

  /// The network performance configuration setting
  /// for the instance, if set. Structure is documented below.
  final List<GetInstanceTemplateNetworkPerformanceConfig>
      networkPerformanceConfigs;
  final String numericId;
  final Map<String, String> partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final String? project;
  final Map<String, String> pulumiLabels;

  /// An instance template is a global resource that is not
  /// bound to a zone or a region. However, you can still specify some regional
  /// resources in an instance template, which restricts the template to the
  /// region where that resource resides. For example, a custom `subnetwork`
  /// resource is tied to a specific region. Defaults to the region of the
  /// Provider if no value is given.
  final String region;
  final List<GetInstanceTemplateReservationAffinity> reservationAffinities;
  final Map<String, String> resourceManagerTags;

  /// (Optional) -- A list of short names of resource policies to attach to this disk for automatic snapshot creations. Currently a max of 1 resource policy is supported.
  final List<String> resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final List<GetInstanceTemplateScheduling> schedulings;

  /// The URI of the created resource.
  final String selfLink;

  /// A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// Referencing an instance template via this attribute prevents Time of Check to Time of Use attacks when the instance template resides in a shared/untrusted environment.
  final String? selfLinkUnique;

  /// Service account to attach to the instance. Structure is documented below.
  final List<GetInstanceTemplateServiceAccount> serviceAccounts;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: `shielded_instance_config` can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  final List<GetInstanceTemplateShieldedInstanceConfig> shieldedInstanceConfigs;

  /// Tags to attach to the instance.
  final List<String> tags;

  /// The unique fingerprint of the tags.
  final String tagsFingerprint;

  /// Creates a new [GetInstanceTemplateResult].
  /// [advancedMachineFeatures] Required.
  /// [canIpForward] Whether to allow sending and receiving of
  /// [confidentialInstanceConfigs] Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] A brief description of this resource.
  /// [disks] Disks to attach to instances created from this template.
  /// [effectiveLabels] Required.
  /// [enableDisplay] Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// [filter] Optional.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceDescription] A brief description to use for instances
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked.
  /// [labels] (Optional) A set of ket/value label pairs to assign to disk created from
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs to make available from
  /// [metadataFingerprint] The unique fingerprint of the metadata.
  /// [metadataStartupScript] An alternative to using the
  /// [minCpuPlatform] Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// [mostRecent] Optional.
  /// [name] The name of the instance template. If you leave
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [networkInterfaces] The URL of the network attachment that this interface should connect to in the following format: projects/{projectNumber}/regions/{region_name}/networkAttachments/{network_attachment_name}.  s
  /// [networkPerformanceConfigs] The network performance configuration setting
  /// [numericId] Required.
  /// [partnerMetadata] Required.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] Required.
  /// [region] An instance template is a global resource that is not
  /// [reservationAffinities] Required.
  /// [resourceManagerTags] Required.
  /// [resourcePolicies] (Optional) -- A list of short names of resource policies to attach to this disk for automatic snapshot creations. Currently a max of 1 resource policy is supported.
  /// [schedulings] The scheduling strategy to use. More details about
  /// [selfLink] The URI of the created resource.
  /// [selfLinkUnique] A special URI of the created resource that uniquely identifies this instance template with the following format: `projects/{{project}}/global/instanceTemplates/{{name}}?uniqueId={{uniqueId}}`
  /// [serviceAccounts] Service account to attach to the instance. Structure is documented below.
  /// [shieldedInstanceConfigs] Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// [tags] Tags to attach to the instance.
  /// [tagsFingerprint] The unique fingerprint of the tags.
  GetInstanceTemplateResult({
    required this.advancedMachineFeatures,
    required this.canIpForward,
    required this.confidentialInstanceConfigs,
    required this.creationTimestamp,
    required this.description,
    required this.disks,
    required this.effectiveLabels,
    required this.enableDisplay,
    this.filter,
    required this.guestAccelerators,
    required this.id,
    required this.instanceDescription,
    required this.keyRevocationActionType,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.metadataFingerprint,
    required this.metadataStartupScript,
    required this.minCpuPlatform,
    this.mostRecent,
    this.name,
    required this.namePrefix,
    required this.networkInterfaces,
    required this.networkPerformanceConfigs,
    required this.numericId,
    required this.partnerMetadata,
    this.project,
    required this.pulumiLabels,
    required this.region,
    required this.reservationAffinities,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.schedulings,
    required this.selfLink,
    this.selfLinkUnique,
    required this.serviceAccounts,
    required this.shieldedInstanceConfigs,
    required this.tags,
    required this.tagsFingerprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedMachineFeatures'] = pulumi.Input.encodeList<
            GetInstanceTemplateAdvancedMachineFeature, Map<String, dynamic>>(
        advancedMachineFeatures, (value) => value.toMap());
    map['canIpForward'] = canIpForward;
    map['confidentialInstanceConfigs'] = pulumi.Input.encodeList<
            GetInstanceTemplateConfidentialInstanceConfig,
            Map<String, dynamic>>(
        confidentialInstanceConfigs, (value) => value.toMap());
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['disks'] =
        pulumi.Input.encodeList<GetInstanceTemplateDisk, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['effectiveLabels'] = effectiveLabels;
    map['enableDisplay'] = enableDisplay;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['guestAccelerators'] = pulumi.Input.encodeList<
        GetInstanceTemplateGuestAccelerator,
        Map<String, dynamic>>(guestAccelerators, (value) => value.toMap());
    map['id'] = id;
    map['instanceDescription'] = instanceDescription;
    map['keyRevocationActionType'] = keyRevocationActionType;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['metadata'] = metadata;
    map['metadataFingerprint'] = metadataFingerprint;
    map['metadataStartupScript'] = metadataStartupScript;
    map['minCpuPlatform'] = minCpuPlatform;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namePrefix'] = namePrefix;
    map['networkInterfaces'] = pulumi.Input.encodeList<
        GetInstanceTemplateNetworkInterface,
        Map<String, dynamic>>(networkInterfaces, (value) => value.toMap());
    map['networkPerformanceConfigs'] = pulumi.Input.encodeList<
            GetInstanceTemplateNetworkPerformanceConfig, Map<String, dynamic>>(
        networkPerformanceConfigs, (value) => value.toMap());
    map['numericId'] = numericId;
    map['partnerMetadata'] = partnerMetadata;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['region'] = region;
    map['reservationAffinities'] = pulumi.Input.encodeList<
        GetInstanceTemplateReservationAffinity,
        Map<String, dynamic>>(reservationAffinities, (value) => value.toMap());
    map['resourceManagerTags'] = resourceManagerTags;
    map['resourcePolicies'] = resourcePolicies;
    map['schedulings'] = pulumi.Input.encodeList<GetInstanceTemplateScheduling,
        Map<String, dynamic>>(schedulings, (value) => value.toMap());
    map['selfLink'] = selfLink;
    final selfLinkUniqueValue = selfLinkUnique;
    if (selfLinkUniqueValue != null) {
      map['selfLinkUnique'] = selfLinkUniqueValue;
    }
    map['serviceAccounts'] = pulumi.Input.encodeList<
        GetInstanceTemplateServiceAccount,
        Map<String, dynamic>>(serviceAccounts, (value) => value.toMap());
    map['shieldedInstanceConfigs'] = pulumi.Input.encodeList<
            GetInstanceTemplateShieldedInstanceConfig, Map<String, dynamic>>(
        shieldedInstanceConfigs, (value) => value.toMap());
    map['tags'] = tags;
    map['tagsFingerprint'] = tagsFingerprint;
    return map;
  }

  factory GetInstanceTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateResult(
      advancedMachineFeatures:
          pulumi.Input.decodeList<GetInstanceTemplateAdvancedMachineFeature>(
              map['advancedMachineFeatures'],
              (value) => GetInstanceTemplateAdvancedMachineFeature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      canIpForward: map['canIpForward'] as bool,
      confidentialInstanceConfigs: pulumi.Input.decodeList<
              GetInstanceTemplateConfidentialInstanceConfig>(
          map['confidentialInstanceConfigs'],
          (value) => GetInstanceTemplateConfidentialInstanceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      disks: pulumi.Input.decodeList<GetInstanceTemplateDisk>(
          map['disks'],
          (value) => GetInstanceTemplateDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableDisplay: map['enableDisplay'] as bool,
      filter: map['filter'] == null ? null : map['filter'] as String,
      guestAccelerators:
          pulumi.Input.decodeList<GetInstanceTemplateGuestAccelerator>(
              map['guestAccelerators'],
              (value) => GetInstanceTemplateGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceDescription: map['instanceDescription'] as String,
      keyRevocationActionType: map['keyRevocationActionType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      metadataFingerprint: map['metadataFingerprint'] as String,
      metadataStartupScript: map['metadataStartupScript'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] as String,
      networkInterfaces:
          pulumi.Input.decodeList<GetInstanceTemplateNetworkInterface>(
              map['networkInterfaces'],
              (value) => GetInstanceTemplateNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceConfigs:
          pulumi.Input.decodeList<GetInstanceTemplateNetworkPerformanceConfig>(
              map['networkPerformanceConfigs'],
              (value) => GetInstanceTemplateNetworkPerformanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      numericId: map['numericId'] as String,
      partnerMetadata: (map['partnerMetadata'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] as String,
      reservationAffinities:
          pulumi.Input.decodeList<GetInstanceTemplateReservationAffinity>(
              map['reservationAffinities'],
              (value) => GetInstanceTemplateReservationAffinity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceManagerTags:
          (map['resourceManagerTags'] as Map).cast<String, String>(),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      schedulings: pulumi.Input.decodeList<GetInstanceTemplateScheduling>(
          map['schedulings'],
          (value) => GetInstanceTemplateScheduling.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      selfLinkUnique: map['selfLinkUnique'] == null
          ? null
          : map['selfLinkUnique'] as String,
      serviceAccounts:
          pulumi.Input.decodeList<GetInstanceTemplateServiceAccount>(
              map['serviceAccounts'],
              (value) => GetInstanceTemplateServiceAccount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfigs:
          pulumi.Input.decodeList<GetInstanceTemplateShieldedInstanceConfig>(
              map['shieldedInstanceConfigs'],
              (value) => GetInstanceTemplateShieldedInstanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
      tagsFingerprint: map['tagsFingerprint'] as String,
    );
  }
}
