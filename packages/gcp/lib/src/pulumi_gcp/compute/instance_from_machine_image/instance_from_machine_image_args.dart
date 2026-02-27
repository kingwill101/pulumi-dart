// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_from_machine_image_advanced_machine_features/instance_from_machine_image_advanced_machine_features.dart';
import '../instance_from_machine_image_confidential_instance_config/instance_from_machine_image_confidential_instance_config.dart';
import '../instance_from_machine_image_guest_accelerator/instance_from_machine_image_guest_accelerator.dart';
import '../instance_from_machine_image_instance_encryption_key/instance_from_machine_image_instance_encryption_key.dart';
import '../instance_from_machine_image_network_interface/instance_from_machine_image_network_interface.dart';
import '../instance_from_machine_image_network_performance_config/instance_from_machine_image_network_performance_config.dart';
import '../instance_from_machine_image_params/instance_from_machine_image_params.dart';
import '../instance_from_machine_image_reservation_affinity/instance_from_machine_image_reservation_affinity.dart';
import '../instance_from_machine_image_scheduling/instance_from_machine_image_scheduling.dart';
import '../instance_from_machine_image_service_account/instance_from_machine_image_service_account.dart';
import '../instance_from_machine_image_shielded_instance_config/instance_from_machine_image_shielded_instance_config.dart';
import '../instance_from_machine_image_source_machine_image_encryption_key/instance_from_machine_image_source_machine_image_encryption_key.dart';

/// The set of arguments for InstanceFromMachineImage.
class InstanceFromMachineImageArgs {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<InstanceFromMachineImageAdvancedMachineFeatures>?
      advancedMachineFeatures;
  final pulumi.Input<bool>? allowStoppingForUpdate;

  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final pulumi.Input<bool>? canIpForward;

  /// The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  final pulumi.Input<InstanceFromMachineImageConfidentialInstanceConfig>?
      confidentialInstanceConfig;

  /// Whether deletion protection is enabled on this instance.
  final pulumi.Input<bool>? deletionProtection;

  /// A brief description of the resource.
  final pulumi.Input<String>? description;

  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  final pulumi.Input<String>? desiredStatus;

  /// Whether the instance has virtual displays enabled.
  final pulumi.Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<InstanceFromMachineImageGuestAccelerator>>?
      guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;

  /// Encryption key used to provide data encryption on the given instance.
  final pulumi.Input<InstanceFromMachineImageInstanceEncryptionKey>?
      instanceEncryptionKey;

  /// Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  final pulumi.Input<String>? keyRevocationActionType;

  /// A set of key/value label pairs assigned to the instance.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The machine type to create.
  final pulumi.Input<String>? machineType;

  /// Metadata key/value pairs made available within the instance.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Metadata startup scripts made available within the instance.
  final pulumi.Input<String>? metadataStartupScript;

  /// The minimum CPU platform specified for the VM instance.
  final pulumi.Input<String>? minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The networks attached to the instance.
  final pulumi.Input<List<InstanceFromMachineImageNetworkInterface>>?
      networkInterfaces;

  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  final pulumi.Input<InstanceFromMachineImageNetworkPerformanceConfig>?
      networkPerformanceConfig;

  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceFromMachineImageParams>? params;

  /// Partner Metadata Map made available within the instance.
  final pulumi.Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<InstanceFromMachineImageReservationAffinity>?
      reservationAffinity;

  /// A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;

  /// The scheduling strategy being used by the instance.
  final pulumi.Input<InstanceFromMachineImageScheduling>? scheduling;

  /// The service account to attach to the instance.
  final pulumi.Input<InstanceFromMachineImageServiceAccount>? serviceAccount;

  /// The shielded vm config being used by the instance.
  final pulumi.Input<InstanceFromMachineImageShieldedInstanceConfig>?
      shieldedInstanceConfig;

  /// Name or self link of a machine
  /// image to create the instance based on.
  ///
  /// - - -
  final pulumi.Input<String> sourceMachineImage;

  /// Encryption key for the source machine image.
  final pulumi.Input<InstanceFromMachineImageSourceMachineImageEncryptionKey>?
      sourceMachineImageEncryptionKey;

  /// The list of tags attached to the instance.
  final pulumi.Input<List<String>>? tags;

  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, most* arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the machine image. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  ///
  /// > **Warning:** *Due to API limitations, disk overrides are currently disabled. This includes the "boot_disk", "attached_disk", and "scratch_disk" fields.
  final pulumi.Input<String>? zone;

  InstanceFromMachineImageArgs({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.desiredStatus,
    this.enableDisplay,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.partnerMetadata,
    this.project,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    required this.sourceMachineImage,
    this.sourceMachineImageEncryptionKey,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageAdvancedMachineFeatures,
              Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final allowStoppingForUpdateValue = allowStoppingForUpdate;
    if (allowStoppingForUpdateValue != null) {
      map['allowStoppingForUpdate'] = allowStoppingForUpdateValue;
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageConfidentialInstanceConfig,
              Map<String, dynamic>>(
          confidentialInstanceConfigValue, (value) => value.toMap());
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final desiredStatusValue = desiredStatus;
    if (desiredStatusValue != null) {
      map['desiredStatus'] = desiredStatusValue;
    }
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceFromMachineImageGuestAccelerator>,
              List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => pulumi.Input.encodeList<
              InstanceFromMachineImageGuestAccelerator,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final instanceEncryptionKeyValue = instanceEncryptionKey;
    if (instanceEncryptionKeyValue != null) {
      map['instanceEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageInstanceEncryptionKey,
              Map<String, dynamic>>(
          instanceEncryptionKeyValue, (value) => value.toMap());
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] = keyRevocationActionTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
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
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceFromMachineImageNetworkInterface>,
              List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => pulumi.Input.encodeList<
              InstanceFromMachineImageNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageNetworkPerformanceConfig,
              Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<
          InstanceFromMachineImageParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = partnerMetadataValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageReservationAffinity,
              Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = pulumi.Input.mapOptionalInputValue<
          InstanceFromMachineImageScheduling,
          Map<String, dynamic>>(schedulingValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = pulumi.Input.mapOptionalInputValue<
          InstanceFromMachineImageServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceFromMachineImageShieldedInstanceConfig,
              Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    map['sourceMachineImage'] = sourceMachineImage;
    final sourceMachineImageEncryptionKeyValue =
        sourceMachineImageEncryptionKey;
    if (sourceMachineImageEncryptionKeyValue != null) {
      map['sourceMachineImageEncryptionKey'] =
          pulumi.Input.mapOptionalInputValue<
                  InstanceFromMachineImageSourceMachineImageEncryptionKey,
                  Map<String, dynamic>>(
              sourceMachineImageEncryptionKeyValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceFromMachineImageArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageArgs(
      advancedMachineFeatures: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageAdvancedMachineFeatures>(
          map['advancedMachineFeatures']),
      allowStoppingForUpdate:
          pulumi.Input.asOptionalInput<bool>(map['allowStoppingForUpdate']),
      canIpForward: pulumi.Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageConfidentialInstanceConfig>(
          map['confidentialInstanceConfig']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      desiredStatus: pulumi.Input.asOptionalInput<String>(map['desiredStatus']),
      enableDisplay: pulumi.Input.asOptionalInput<bool>(map['enableDisplay']),
      guestAccelerators: pulumi.Input.asOptionalInput<
              List<InstanceFromMachineImageGuestAccelerator>>(
          map['guestAccelerators']),
      hostname: pulumi.Input.asOptionalInput<String>(map['hostname']),
      instanceEncryptionKey: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageInstanceEncryptionKey>(
          map['instanceEncryptionKey']),
      keyRevocationActionType:
          pulumi.Input.asOptionalInput<String>(map['keyRevocationActionType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: pulumi.Input.asOptionalInput<String>(map['machineType']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      metadataStartupScript:
          pulumi.Input.asOptionalInput<String>(map['metadataStartupScript']),
      minCpuPlatform:
          pulumi.Input.asOptionalInput<String>(map['minCpuPlatform']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkInterfaces: pulumi.Input.asOptionalInput<
              List<InstanceFromMachineImageNetworkInterface>>(
          map['networkInterfaces']),
      networkPerformanceConfig: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageNetworkPerformanceConfig>(
          map['networkPerformanceConfig']),
      params: pulumi.Input.asOptionalInput<InstanceFromMachineImageParams>(
          map['params']),
      partnerMetadata: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['partnerMetadata']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reservationAffinity: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageReservationAffinity>(
          map['reservationAffinity']),
      resourcePolicies:
          pulumi.Input.asOptionalInput<String>(map['resourcePolicies']),
      scheduling:
          pulumi.Input.asOptionalInput<InstanceFromMachineImageScheduling>(
              map['scheduling']),
      serviceAccount:
          pulumi.Input.asOptionalInput<InstanceFromMachineImageServiceAccount>(
              map['serviceAccount']),
      shieldedInstanceConfig: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageShieldedInstanceConfig>(
          map['shieldedInstanceConfig']),
      sourceMachineImage:
          pulumi.Input.asInput<String>(map['sourceMachineImage']),
      sourceMachineImageEncryptionKey: pulumi.Input.asOptionalInput<
              InstanceFromMachineImageSourceMachineImageEncryptionKey>(
          map['sourceMachineImageEncryptionKey']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
