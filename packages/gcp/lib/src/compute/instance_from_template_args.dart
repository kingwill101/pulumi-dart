// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_advanced_machine_features.dart';
import 'instance_from_template_attached_disk.dart';
import 'instance_from_template_boot_disk.dart';
import 'instance_from_template_confidential_instance_config.dart';
import 'instance_from_template_guest_accelerator.dart';
import 'instance_from_template_instance_encryption_key.dart';
import 'instance_from_template_network_interface.dart';
import 'instance_from_template_network_performance_config.dart';
import 'instance_from_template_params.dart';
import 'instance_from_template_reservation_affinity.dart';
import 'instance_from_template_scheduling.dart';
import 'instance_from_template_scratch_disk.dart';
import 'instance_from_template_service_account.dart';
import 'instance_from_template_shielded_instance_config.dart';

/// {@template pulumi_compute_instance_from_template_instance_from_template_args_doc}
/// The set of arguments for InstanceFromTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_from_template_instance_from_template_args_doc}
class InstanceFromTemplateArgs {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<InstanceFromTemplateAdvancedMachineFeatures>?
  advancedMachineFeatures;
  final pulumi.Input<bool>? allowStoppingForUpdate;

  /// List of disks attached to the instance
  final pulumi.Input<List<InstanceFromTemplateAttachedDisk>>? attachedDisks;

  /// The boot disk for the instance.
  final pulumi.Input<InstanceFromTemplateBootDisk>? bootDisk;

  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  final pulumi.Input<bool>? canIpForward;

  /// The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create.
  final pulumi.Input<InstanceFromTemplateConfidentialInstanceConfig>?
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
  final pulumi.Input<List<InstanceFromTemplateGuestAccelerator>>?
  guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostname;

  /// Encryption key used to provide data encryption on the given instance.
  final pulumi.Input<InstanceFromTemplateInstanceEncryptionKey>?
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
  final pulumi.Input<List<InstanceFromTemplateNetworkInterface>>?
  networkInterfaces;

  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  final pulumi.Input<InstanceFromTemplateNetworkPerformanceConfig>?
  networkPerformanceConfig;

  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceFromTemplateParams>? params;

  /// Partner Metadata Map made available within the instance.
  final pulumi.Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<InstanceFromTemplateReservationAffinity>?
  reservationAffinity;

  /// A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;

  /// The scheduling strategy being used by the instance.
  final pulumi.Input<InstanceFromTemplateScheduling>? scheduling;

  /// The scratch disks attached to the instance.
  final pulumi.Input<List<InstanceFromTemplateScratchDisk>>? scratchDisks;

  /// The service account to attach to the instance.
  final pulumi.Input<InstanceFromTemplateServiceAccount>? serviceAccount;

  /// The shielded vm config being used by the instance.
  final pulumi.Input<InstanceFromTemplateShieldedInstanceConfig>?
  shieldedInstanceConfig;

  /// Name or self link of an instance
  /// template to create the instance based on. It is recommended to reference
  /// instance templates through their unique id (`self_link_unique` attribute).
  ///
  /// - - -
  final pulumi.Input<String> sourceInstanceTemplate;

  /// The list of tags attached to the instance.
  final pulumi.Input<List<String>>? tags;

  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, all arguments from `gcp.compute.Instance` are supported
  /// as a way to override the properties in the template. All exported attributes
  /// from `gcp.compute.Instance` are likewise exported here.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceFromTemplateArgs].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [allowStoppingForUpdate] Optional.
  /// [attachedDisks] List of disks attached to the instance
  /// [bootDisk] The boot disk for the instance.
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
  /// [scratchDisks] The scratch disks attached to the instance.
  /// [serviceAccount] The service account to attach to the instance.
  /// [shieldedInstanceConfig] The shielded vm config being used by the instance.
  /// [sourceInstanceTemplate] Name or self link of an instance
  /// [tags] The list of tags attached to the instance.
  /// [zone] The zone that the machine should be created in. If not
  InstanceFromTemplateArgs({
    InstanceFromTemplateAdvancedMachineFeatures? advancedMachineFeatures,
    bool? allowStoppingForUpdate,
    List<InstanceFromTemplateAttachedDisk>? attachedDisks,
    InstanceFromTemplateBootDisk? bootDisk,
    bool? canIpForward,
    InstanceFromTemplateConfidentialInstanceConfig? confidentialInstanceConfig,
    bool? deletionProtection,
    String? description,
    String? desiredStatus,
    bool? enableDisplay,
    List<InstanceFromTemplateGuestAccelerator>? guestAccelerators,
    String? hostname,
    InstanceFromTemplateInstanceEncryptionKey? instanceEncryptionKey,
    String? keyRevocationActionType,
    Map<String, String>? labels,
    String? machineType,
    Map<String, String>? metadata,
    String? metadataStartupScript,
    String? minCpuPlatform,
    String? name,
    List<InstanceFromTemplateNetworkInterface>? networkInterfaces,
    InstanceFromTemplateNetworkPerformanceConfig? networkPerformanceConfig,
    InstanceFromTemplateParams? params,
    Map<String, String>? partnerMetadata,
    String? project,
    InstanceFromTemplateReservationAffinity? reservationAffinity,
    String? resourcePolicies,
    InstanceFromTemplateScheduling? scheduling,
    List<InstanceFromTemplateScratchDisk>? scratchDisks,
    InstanceFromTemplateServiceAccount? serviceAccount,
    InstanceFromTemplateShieldedInstanceConfig? shieldedInstanceConfig,
    required String sourceInstanceTemplate,
    List<String>? tags,
    String? zone,
  }) : advancedMachineFeatures =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateAdvancedMachineFeatures
           >(advancedMachineFeatures),
       allowStoppingForUpdate = pulumi.Input.asOptionalInput<bool>(
         allowStoppingForUpdate,
       ),
       attachedDisks =
           pulumi.Input.asOptionalInput<List<InstanceFromTemplateAttachedDisk>>(
             attachedDisks,
           ),
       bootDisk = pulumi.Input.asOptionalInput<InstanceFromTemplateBootDisk>(
         bootDisk,
       ),
       canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
       confidentialInstanceConfig =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateConfidentialInstanceConfig
           >(confidentialInstanceConfig),
       deletionProtection = pulumi.Input.asOptionalInput<bool>(
         deletionProtection,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       desiredStatus = pulumi.Input.asOptionalInput<String>(desiredStatus),
       enableDisplay = pulumi.Input.asOptionalInput<bool>(enableDisplay),
       guestAccelerators =
           pulumi.Input.asOptionalInput<
             List<InstanceFromTemplateGuestAccelerator>
           >(guestAccelerators),
       hostname = pulumi.Input.asOptionalInput<String>(hostname),
       instanceEncryptionKey =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateInstanceEncryptionKey
           >(instanceEncryptionKey),
       keyRevocationActionType = pulumi.Input.asOptionalInput<String>(
         keyRevocationActionType,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       machineType = pulumi.Input.asOptionalInput<String>(machineType),
       metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
       metadataStartupScript = pulumi.Input.asOptionalInput<String>(
         metadataStartupScript,
       ),
       minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
       name = pulumi.Input.asOptionalInput<String>(name),
       networkInterfaces =
           pulumi.Input.asOptionalInput<
             List<InstanceFromTemplateNetworkInterface>
           >(networkInterfaces),
       networkPerformanceConfig =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateNetworkPerformanceConfig
           >(networkPerformanceConfig),
       params = pulumi.Input.asOptionalInput<InstanceFromTemplateParams>(
         params,
       ),
       partnerMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(
         partnerMetadata,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       reservationAffinity =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateReservationAffinity
           >(reservationAffinity),
       resourcePolicies = pulumi.Input.asOptionalInput<String>(
         resourcePolicies,
       ),
       scheduling = pulumi
           .Input.asOptionalInput<InstanceFromTemplateScheduling>(scheduling),
       scratchDisks =
           pulumi.Input.asOptionalInput<List<InstanceFromTemplateScratchDisk>>(
             scratchDisks,
           ),
       serviceAccount =
           pulumi.Input.asOptionalInput<InstanceFromTemplateServiceAccount>(
             serviceAccount,
           ),
       shieldedInstanceConfig =
           pulumi.Input.asOptionalInput<
             InstanceFromTemplateShieldedInstanceConfig
           >(shieldedInstanceConfig),
       sourceInstanceTemplate = pulumi.Input.asInput<String>(
         sourceInstanceTemplate,
       ),
       tags = pulumi.Input.asOptionalInput<List<String>>(tags),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateAdvancedMachineFeatures,
            Map<String, dynamic>
          >(advancedMachineFeatures, (value) => value.toMap()),
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'attachedDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceFromTemplateAttachedDisk>,
            List<Map<String, dynamic>>
          >(
            attachedDisks,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceFromTemplateAttachedDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bootDisk':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateBootDisk,
            Map<String, dynamic>
          >(bootDisk, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateConfidentialInstanceConfig,
            Map<String, dynamic>
          >(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'desiredStatus': ?desiredStatus,
      'enableDisplay': ?enableDisplay,
      'guestAccelerators':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceFromTemplateGuestAccelerator>,
            List<Map<String, dynamic>>
          >(
            guestAccelerators,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceFromTemplateGuestAccelerator,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hostname': ?hostname,
      'instanceEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateInstanceEncryptionKey,
            Map<String, dynamic>
          >(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?keyRevocationActionType,
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'metadataStartupScript': ?metadataStartupScript,
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceFromTemplateNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceFromTemplateNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'networkPerformanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateNetworkPerformanceConfig,
            Map<String, dynamic>
          >(networkPerformanceConfig, (value) => value.toMap()),
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'partnerMetadata': ?partnerMetadata,
      'project': ?project,
      'reservationAffinity':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateReservationAffinity,
            Map<String, dynamic>
          >(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateScheduling,
            Map<String, dynamic>
          >(scheduling, (value) => value.toMap()),
      'scratchDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceFromTemplateScratchDisk>,
            List<Map<String, dynamic>>
          >(
            scratchDisks,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceFromTemplateScratchDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateServiceAccount,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateShieldedInstanceConfig,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'sourceInstanceTemplate': sourceInstanceTemplate,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory InstanceFromTemplateArgs.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateArgs(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : InstanceFromTemplateAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      allowStoppingForUpdate: map['allowStoppingForUpdate'] == null
          ? null
          : map['allowStoppingForUpdate'] as bool,
      attachedDisks: map['attachedDisks'] == null
          ? null
          : pulumi.Input.decodeList<InstanceFromTemplateAttachedDisk>(
              map['attachedDisks'],
              (value) => InstanceFromTemplateAttachedDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      bootDisk: map['bootDisk'] == null
          ? null
          : InstanceFromTemplateBootDisk.fromMap(
              (map['bootDisk'] as Map).cast<String, dynamic>(),
            ),
      canIpForward: map['canIpForward'] == null
          ? null
          : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : InstanceFromTemplateConfidentialInstanceConfig.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      desiredStatus: map['desiredStatus'] == null
          ? null
          : map['desiredStatus'] as String,
      enableDisplay: map['enableDisplay'] == null
          ? null
          : map['enableDisplay'] as bool,
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<InstanceFromTemplateGuestAccelerator>(
              map['guestAccelerators'],
              (value) => InstanceFromTemplateGuestAccelerator.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceEncryptionKey: map['instanceEncryptionKey'] == null
          ? null
          : InstanceFromTemplateInstanceEncryptionKey.fromMap(
              (map['instanceEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      keyRevocationActionType: map['keyRevocationActionType'] == null
          ? null
          : map['keyRevocationActionType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
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
          : pulumi.Input.decodeList<InstanceFromTemplateNetworkInterface>(
              map['networkInterfaces'],
              (value) => InstanceFromTemplateNetworkInterface.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null
          ? null
          : InstanceFromTemplateNetworkPerformanceConfig.fromMap(
              (map['networkPerformanceConfig'] as Map).cast<String, dynamic>(),
            ),
      params: map['params'] == null
          ? null
          : InstanceFromTemplateParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>(),
            ),
      partnerMetadata: map['partnerMetadata'] == null
          ? null
          : (map['partnerMetadata'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      reservationAffinity: map['reservationAffinity'] == null
          ? null
          : InstanceFromTemplateReservationAffinity.fromMap(
              (map['reservationAffinity'] as Map).cast<String, dynamic>(),
            ),
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : map['resourcePolicies'] as String,
      scheduling: map['scheduling'] == null
          ? null
          : InstanceFromTemplateScheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>(),
            ),
      scratchDisks: map['scratchDisks'] == null
          ? null
          : pulumi.Input.decodeList<InstanceFromTemplateScratchDisk>(
              map['scratchDisks'],
              (value) => InstanceFromTemplateScratchDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : InstanceFromTemplateServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>(),
            ),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : InstanceFromTemplateShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>(),
            ),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
