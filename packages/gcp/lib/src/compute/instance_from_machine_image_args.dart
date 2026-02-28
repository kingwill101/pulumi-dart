// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_advanced_machine_features.dart';
import 'instance_from_machine_image_confidential_instance_config.dart';
import 'instance_from_machine_image_guest_accelerator.dart';
import 'instance_from_machine_image_instance_encryption_key.dart';
import 'instance_from_machine_image_network_interface.dart';
import 'instance_from_machine_image_network_performance_config.dart';
import 'instance_from_machine_image_params.dart';
import 'instance_from_machine_image_reservation_affinity.dart';
import 'instance_from_machine_image_scheduling.dart';
import 'instance_from_machine_image_service_account.dart';
import 'instance_from_machine_image_shielded_instance_config.dart';
import 'instance_from_machine_image_source_machine_image_encryption_key.dart';

/// {@template pulumi_compute_instance_from_machine_image_instance_from_machine_image_args_doc}
/// The set of arguments for InstanceFromMachineImage.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_from_machine_image_instance_from_machine_image_args_doc}
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

  /// Creates a new [InstanceFromMachineImageArgs].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [allowStoppingForUpdate] Optional.
  /// [canIpForward] Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  /// [confidentialInstanceConfig] The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  /// [deletionProtection] Whether deletion protection is enabled on this instance.
  /// [description] A brief description of the resource.
  /// [desiredStatus] Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  /// [enableDisplay] Whether the instance has virtual displays enabled.
  /// [guestAccelerators] List of the type and count of accelerator cards attached to the instance.
  /// [hostname] A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  /// [instanceEncryptionKey] Encryption key used to provide data encryption on the given instance.
  /// [keyRevocationActionType] Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  /// [labels] A set of key/value label pairs assigned to the instance.
  /// [machineType] The machine type to create.
  /// [metadata] Metadata key/value pairs made available within the instance.
  /// [metadataStartupScript] Metadata startup scripts made available within the instance.
  /// [minCpuPlatform] The minimum CPU platform specified for the VM instance.
  /// [name] A unique name for the resource, required by GCE.
  /// [networkInterfaces] The networks attached to the instance.
  /// [networkPerformanceConfig] Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  /// [params] Stores additional params passed with the request, but not persisted as part of resource payload.
  /// [partnerMetadata] Partner Metadata Map made available within the instance.
  /// [project] The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  /// [scheduling] The scheduling strategy being used by the instance.
  /// [serviceAccount] The service account to attach to the instance.
  /// [shieldedInstanceConfig] The shielded vm config being used by the instance.
  /// [sourceMachineImage] Name or self link of a machine
  /// [sourceMachineImageEncryptionKey] Encryption key for the source machine image.
  /// [tags] The list of tags attached to the instance.
  /// [zone] The zone that the machine should be created in. If not
  InstanceFromMachineImageArgs({
    InstanceFromMachineImageAdvancedMachineFeatures? advancedMachineFeatures,
    bool? allowStoppingForUpdate,
    bool? canIpForward,
    InstanceFromMachineImageConfidentialInstanceConfig?
        confidentialInstanceConfig,
    bool? deletionProtection,
    String? description,
    String? desiredStatus,
    bool? enableDisplay,
    List<InstanceFromMachineImageGuestAccelerator>? guestAccelerators,
    String? hostname,
    InstanceFromMachineImageInstanceEncryptionKey? instanceEncryptionKey,
    String? keyRevocationActionType,
    Map<String, String>? labels,
    String? machineType,
    Map<String, String>? metadata,
    String? metadataStartupScript,
    String? minCpuPlatform,
    String? name,
    List<InstanceFromMachineImageNetworkInterface>? networkInterfaces,
    InstanceFromMachineImageNetworkPerformanceConfig? networkPerformanceConfig,
    InstanceFromMachineImageParams? params,
    Map<String, String>? partnerMetadata,
    String? project,
    InstanceFromMachineImageReservationAffinity? reservationAffinity,
    String? resourcePolicies,
    InstanceFromMachineImageScheduling? scheduling,
    InstanceFromMachineImageServiceAccount? serviceAccount,
    InstanceFromMachineImageShieldedInstanceConfig? shieldedInstanceConfig,
    required String sourceMachineImage,
    InstanceFromMachineImageSourceMachineImageEncryptionKey?
        sourceMachineImageEncryptionKey,
    List<String>? tags,
    String? zone,
  })  : advancedMachineFeatures = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageAdvancedMachineFeatures>(
            advancedMachineFeatures),
        allowStoppingForUpdate =
            pulumi.Input.asOptionalInput<bool>(allowStoppingForUpdate),
        canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
        confidentialInstanceConfig = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageConfidentialInstanceConfig>(
            confidentialInstanceConfig),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        description = pulumi.Input.asOptionalInput<String>(description),
        desiredStatus = pulumi.Input.asOptionalInput<String>(desiredStatus),
        enableDisplay = pulumi.Input.asOptionalInput<bool>(enableDisplay),
        guestAccelerators = pulumi.Input.asOptionalInput<
            List<InstanceFromMachineImageGuestAccelerator>>(guestAccelerators),
        hostname = pulumi.Input.asOptionalInput<String>(hostname),
        instanceEncryptionKey = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageInstanceEncryptionKey>(
            instanceEncryptionKey),
        keyRevocationActionType =
            pulumi.Input.asOptionalInput<String>(keyRevocationActionType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        machineType = pulumi.Input.asOptionalInput<String>(machineType),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        metadataStartupScript =
            pulumi.Input.asOptionalInput<String>(metadataStartupScript),
        minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkInterfaces = pulumi.Input.asOptionalInput<
            List<InstanceFromMachineImageNetworkInterface>>(networkInterfaces),
        networkPerformanceConfig = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageNetworkPerformanceConfig>(
            networkPerformanceConfig),
        params = pulumi.Input.asOptionalInput<InstanceFromMachineImageParams>(
            params),
        partnerMetadata =
            pulumi.Input.asOptionalInput<Map<String, String>>(partnerMetadata),
        project = pulumi.Input.asOptionalInput<String>(project),
        reservationAffinity = pulumi.Input.asOptionalInput<
            InstanceFromMachineImageReservationAffinity>(reservationAffinity),
        resourcePolicies =
            pulumi.Input.asOptionalInput<String>(resourcePolicies),
        scheduling =
            pulumi.Input.asOptionalInput<InstanceFromMachineImageScheduling>(
                scheduling),
        serviceAccount = pulumi.Input.asOptionalInput<
            InstanceFromMachineImageServiceAccount>(serviceAccount),
        shieldedInstanceConfig = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageShieldedInstanceConfig>(
            shieldedInstanceConfig),
        sourceMachineImage = pulumi.Input.asInput<String>(sourceMachineImage),
        sourceMachineImageEncryptionKey = pulumi.Input.asOptionalInput<
                InstanceFromMachineImageSourceMachineImageEncryptionKey>(
            sourceMachineImageEncryptionKey),
        tags = pulumi.Input.asOptionalInput<List<String>>(tags),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : InstanceFromMachineImageAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] == null
          ? null
          : map['allowStoppingForUpdate'] as bool,
      canIpForward:
          map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : InstanceFromMachineImageConfidentialInstanceConfig.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      desiredStatus:
          map['desiredStatus'] == null ? null : map['desiredStatus'] as String,
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<InstanceFromMachineImageGuestAccelerator>(
              map['guestAccelerators'],
              (value) => InstanceFromMachineImageGuestAccelerator.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceEncryptionKey: map['instanceEncryptionKey'] == null
          ? null
          : InstanceFromMachineImageInstanceEncryptionKey.fromMap(
              (map['instanceEncryptionKey'] as Map).cast<String, dynamic>()),
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : map['keyRevocationActionType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
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
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<InstanceFromMachineImageNetworkInterface>(
              map['networkInterfaces'],
              (value) => InstanceFromMachineImageNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : InstanceFromMachineImageNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      params: map['params'] == null
          ? null
          : InstanceFromMachineImageParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>()),
      partnerMetadata: map['partnerMetadata'] == null
          ? null
          : (map['partnerMetadata'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : InstanceFromMachineImageReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : map['resourcePolicies'] as String,
      scheduling: map['scheduling'] == null
          ? null
          : InstanceFromMachineImageScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : InstanceFromMachineImageServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : InstanceFromMachineImageShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      sourceMachineImage: map['sourceMachineImage'] as String,
      sourceMachineImageEncryptionKey:
          map['sourceMachineImageEncryptionKey'] == null
              ? null
              : InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap(
                  (map['sourceMachineImageEncryptionKey'] as Map)
                      .cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
