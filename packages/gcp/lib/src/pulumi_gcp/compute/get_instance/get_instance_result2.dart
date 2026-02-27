// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_advanced_machine_feature/get_instance_advanced_machine_feature.dart';
import '../get_instance_attached_disk/get_instance_attached_disk.dart';
import '../get_instance_boot_disk/get_instance_boot_disk.dart';
import '../get_instance_confidential_instance_config/get_instance_confidential_instance_config.dart';
import '../get_instance_guest_accelerator/get_instance_guest_accelerator.dart';
import '../get_instance_instance_encryption_key/get_instance_instance_encryption_key.dart';
import '../get_instance_network_interface/get_instance_network_interface.dart';
import '../get_instance_network_performance_config/get_instance_network_performance_config.dart';
import '../get_instance_param/get_instance_param.dart';
import '../get_instance_reservation_affinity/get_instance_reservation_affinity.dart';
import '../get_instance_scheduling/get_instance_scheduling.dart';
import '../get_instance_scratch_disk/get_instance_scratch_disk.dart';
import '../get_instance_service_account/get_instance_service_account.dart';
import '../get_instance_shielded_instance_config/get_instance_shielded_instance_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult2 {
  final List<GetInstanceAdvancedMachineFeature> advancedMachineFeatures;
  final bool allowStoppingForUpdate;

  /// List of disks attached to the instance. Structure is documented below.
  final List<GetInstanceAttachedDisk> attachedDisks;

  /// The boot disk for the instance. Structure is documented below.
  final List<GetInstanceBootDisk> bootDisks;

  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final bool canIpForward;
  final List<GetInstanceConfidentialInstanceConfig> confidentialInstanceConfigs;

  /// The CPU platform used by this instance.
  final String cpuPlatform;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  final String currentStatus;

  /// Whether deletion protection is enabled on this instance.
  final bool deletionProtection;

  /// A brief description of the resource.
  final String description;
  final String desiredStatus;
  final Map<String, String> effectiveLabels;

  /// Whether the instance has virtual displays enabled.
  final bool enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure is documented below.
  final List<GetInstanceGuestAccelerator> guestAccelerators;
  final String hostname;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInstanceInstanceEncryptionKey> instanceEncryptionKeys;

  /// The server-assigned unique identifier of this instance.
  final String instanceId;

  /// Action to be taken when a customer's encryption key is revoked.
  final String keyRevocationActionType;

  /// The unique fingerprint of the labels.
  final String labelFingerprint;

  /// A set of key/value label pairs assigned to the disk.
  final Map<String, String> labels;

  /// The machine type to create.
  final String machineType;

  /// Metadata key/value pairs made available within the instance.
  final Map<String, String> metadata;

  /// The unique fingerprint of the metadata.
  final String metadataFingerprint;
  final String metadataStartupScript;

  /// The minimum CPU platform specified for the VM instance. Set to "AUTOMATIC" to remove a previously-set value.
  final String minCpuPlatform;
  final String? name;

  /// The networks attached to the instance. Structure is documented below.
  final List<GetInstanceNetworkInterface> networkInterfaces;

  /// The network performance configuration setting for the instance, if set. Structure is documented below.
  final List<GetInstanceNetworkPerformanceConfig> networkPerformanceConfigs;
  final List<GetInstanceParam> params;
  final Map<String, String> partnerMetadata;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetInstanceReservationAffinity> reservationAffinities;

  /// A list of self_links to resource policies attached to the selected `boot_disk`
  final List<String> resourcePolicies;

  /// The scheduling strategy being used by the instance. Structure is documented below
  final List<GetInstanceScheduling> schedulings;

  /// The scratch disks attached to the instance. Structure is documented below.
  final List<GetInstanceScratchDisk> scratchDisks;

  /// The URI of the created resource.
  final String? selfLink;

  /// The service account to attach to the instance. Structure is documented below.
  final List<GetInstanceServiceAccount> serviceAccounts;

  /// The shielded vm config being used by the instance. Structure is documented below.
  final List<GetInstanceShieldedInstanceConfig> shieldedInstanceConfigs;

  /// The list of tags attached to the instance.
  final List<String> tags;

  /// The unique fingerprint of the tags.
  final String tagsFingerprint;
  final String? zone;

  GetInstanceResult2({
    required this.advancedMachineFeatures,
    required this.allowStoppingForUpdate,
    required this.attachedDisks,
    required this.bootDisks,
    required this.canIpForward,
    required this.confidentialInstanceConfigs,
    required this.cpuPlatform,
    required this.creationTimestamp,
    required this.currentStatus,
    required this.deletionProtection,
    required this.description,
    required this.desiredStatus,
    required this.effectiveLabels,
    required this.enableDisplay,
    required this.guestAccelerators,
    required this.hostname,
    required this.id,
    required this.instanceEncryptionKeys,
    required this.instanceId,
    required this.keyRevocationActionType,
    required this.labelFingerprint,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.metadataFingerprint,
    required this.metadataStartupScript,
    required this.minCpuPlatform,
    this.name,
    required this.networkInterfaces,
    required this.networkPerformanceConfigs,
    required this.params,
    required this.partnerMetadata,
    this.project,
    required this.pulumiLabels,
    required this.reservationAffinities,
    required this.resourcePolicies,
    required this.schedulings,
    required this.scratchDisks,
    this.selfLink,
    required this.serviceAccounts,
    required this.shieldedInstanceConfigs,
    required this.tags,
    required this.tagsFingerprint,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedMachineFeatures'] = Input.encodeList<
            GetInstanceAdvancedMachineFeature, Map<String, dynamic>>(
        advancedMachineFeatures, (value) => value.toMap());
    map['allowStoppingForUpdate'] = allowStoppingForUpdate;
    map['attachedDisks'] =
        Input.encodeList<GetInstanceAttachedDisk, Map<String, dynamic>>(
            attachedDisks, (value) => value.toMap());
    map['bootDisks'] =
        Input.encodeList<GetInstanceBootDisk, Map<String, dynamic>>(
            bootDisks, (value) => value.toMap());
    map['canIpForward'] = canIpForward;
    map['confidentialInstanceConfigs'] = Input.encodeList<
            GetInstanceConfidentialInstanceConfig, Map<String, dynamic>>(
        confidentialInstanceConfigs, (value) => value.toMap());
    map['cpuPlatform'] = cpuPlatform;
    map['creationTimestamp'] = creationTimestamp;
    map['currentStatus'] = currentStatus;
    map['deletionProtection'] = deletionProtection;
    map['description'] = description;
    map['desiredStatus'] = desiredStatus;
    map['effectiveLabels'] = effectiveLabels;
    map['enableDisplay'] = enableDisplay;
    map['guestAccelerators'] =
        Input.encodeList<GetInstanceGuestAccelerator, Map<String, dynamic>>(
            guestAccelerators, (value) => value.toMap());
    map['hostname'] = hostname;
    map['id'] = id;
    map['instanceEncryptionKeys'] = Input.encodeList<
        GetInstanceInstanceEncryptionKey,
        Map<String, dynamic>>(instanceEncryptionKeys, (value) => value.toMap());
    map['instanceId'] = instanceId;
    map['keyRevocationActionType'] = keyRevocationActionType;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['machineType'] = machineType;
    map['metadata'] = metadata;
    map['metadataFingerprint'] = metadataFingerprint;
    map['metadataStartupScript'] = metadataStartupScript;
    map['minCpuPlatform'] = minCpuPlatform;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkInterfaces'] =
        Input.encodeList<GetInstanceNetworkInterface, Map<String, dynamic>>(
            networkInterfaces, (value) => value.toMap());
    map['networkPerformanceConfigs'] = Input.encodeList<
            GetInstanceNetworkPerformanceConfig, Map<String, dynamic>>(
        networkPerformanceConfigs, (value) => value.toMap());
    map['params'] = Input.encodeList<GetInstanceParam, Map<String, dynamic>>(
        params, (value) => value.toMap());
    map['partnerMetadata'] = partnerMetadata;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['reservationAffinities'] =
        Input.encodeList<GetInstanceReservationAffinity, Map<String, dynamic>>(
            reservationAffinities, (value) => value.toMap());
    map['resourcePolicies'] = resourcePolicies;
    map['schedulings'] =
        Input.encodeList<GetInstanceScheduling, Map<String, dynamic>>(
            schedulings, (value) => value.toMap());
    map['scratchDisks'] =
        Input.encodeList<GetInstanceScratchDisk, Map<String, dynamic>>(
            scratchDisks, (value) => value.toMap());
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['serviceAccounts'] =
        Input.encodeList<GetInstanceServiceAccount, Map<String, dynamic>>(
            serviceAccounts, (value) => value.toMap());
    map['shieldedInstanceConfigs'] = Input.encodeList<
            GetInstanceShieldedInstanceConfig, Map<String, dynamic>>(
        shieldedInstanceConfigs, (value) => value.toMap());
    map['tags'] = tags;
    map['tagsFingerprint'] = tagsFingerprint;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceResult2.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult2(
      advancedMachineFeatures:
          Input.decodeList<GetInstanceAdvancedMachineFeature>(
              map['advancedMachineFeatures'],
              (value) => GetInstanceAdvancedMachineFeature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] as bool,
      attachedDisks: Input.decodeList<GetInstanceAttachedDisk>(
          map['attachedDisks'],
          (value) => GetInstanceAttachedDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      bootDisks: Input.decodeList<GetInstanceBootDisk>(
          map['bootDisks'],
          (value) => GetInstanceBootDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      canIpForward: map['canIpForward'] as bool,
      confidentialInstanceConfigs:
          Input.decodeList<GetInstanceConfidentialInstanceConfig>(
              map['confidentialInstanceConfigs'],
              (value) => GetInstanceConfidentialInstanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cpuPlatform: map['cpuPlatform'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      currentStatus: map['currentStatus'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      description: map['description'] as String,
      desiredStatus: map['desiredStatus'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      enableDisplay: map['enableDisplay'] as bool,
      guestAccelerators: Input.decodeList<GetInstanceGuestAccelerator>(
          map['guestAccelerators'],
          (value) => GetInstanceGuestAccelerator.fromMap(
              (value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      instanceEncryptionKeys:
          Input.decodeList<GetInstanceInstanceEncryptionKey>(
              map['instanceEncryptionKeys'],
              (value) => GetInstanceInstanceEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] as String,
      keyRevocationActionType: map['keyRevocationActionType'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      metadataFingerprint: map['metadataFingerprint'] as String,
      metadataStartupScript: map['metadataStartupScript'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkInterfaces: Input.decodeList<GetInstanceNetworkInterface>(
          map['networkInterfaces'],
          (value) => GetInstanceNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkPerformanceConfigs:
          Input.decodeList<GetInstanceNetworkPerformanceConfig>(
              map['networkPerformanceConfigs'],
              (value) => GetInstanceNetworkPerformanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      params: Input.decodeList<GetInstanceParam>(
          map['params'],
          (value) =>
              GetInstanceParam.fromMap((value as Map).cast<String, dynamic>())),
      partnerMetadata: (map['partnerMetadata'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      reservationAffinities: Input.decodeList<GetInstanceReservationAffinity>(
          map['reservationAffinities'],
          (value) => GetInstanceReservationAffinity.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourcePolicies: (map['resourcePolicies'] as List).cast<String>(),
      schedulings: Input.decodeList<GetInstanceScheduling>(
          map['schedulings'],
          (value) => GetInstanceScheduling.fromMap(
              (value as Map).cast<String, dynamic>())),
      scratchDisks: Input.decodeList<GetInstanceScratchDisk>(
          map['scratchDisks'],
          (value) => GetInstanceScratchDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      serviceAccounts: Input.decodeList<GetInstanceServiceAccount>(
          map['serviceAccounts'],
          (value) => GetInstanceServiceAccount.fromMap(
              (value as Map).cast<String, dynamic>())),
      shieldedInstanceConfigs:
          Input.decodeList<GetInstanceShieldedInstanceConfig>(
              map['shieldedInstanceConfigs'],
              (value) => GetInstanceShieldedInstanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
      tagsFingerprint: map['tagsFingerprint'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
