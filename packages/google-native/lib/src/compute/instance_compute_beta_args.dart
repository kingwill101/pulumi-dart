// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_beta.dart';
import 'advanced_machine_features_compute_beta.dart';
import 'attached_disk_compute_beta.dart';
import 'confidential_instance_config_compute_beta.dart';
import 'customer_encryption_key_compute_beta.dart';
import 'display_device_compute_beta.dart';
import 'instance_key_revocation_action_type_compute_beta.dart';
import 'instance_params_compute_beta.dart';
import 'instance_post_key_revocation_action_type_compute_beta.dart';
import 'instance_private_ipv6_google_access_compute_beta.dart';
import 'metadata_compute_beta.dart';
import 'network_interface_compute_beta.dart';
import 'network_performance_config_compute_beta.dart';
import 'reservation_affinity_compute_beta.dart';
import 'scheduling_compute_beta.dart';
import 'service_account_compute_beta.dart';
import 'shielded_instance_config_compute_beta.dart';
import 'shielded_instance_integrity_policy_compute_beta.dart';
import 'shielded_vm_config_compute_beta.dart';
import 'shielded_vm_integrity_policy_compute_beta.dart';
import 'tags_compute_beta.dart';

/// {@template pulumi_compute_beta_instance_compute_beta_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_instance_compute_beta_args_doc}
class InstanceComputeBetaArgs {
  /// Controls for advanced machine-related behavior features.
  final pulumi.Input<AdvancedMachineFeaturesComputeBeta>? advancedMachineFeatures;
  /// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  final pulumi.Input<bool>? canIpForward;
  final pulumi.Input<ConfidentialInstanceConfigComputeBeta>? confidentialInstanceConfig;
  /// Whether the resource should be protected against deletion.
  final pulumi.Input<bool>? deletionProtection;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  final pulumi.Input<List<AttachedDiskComputeBeta>>? disks;
  /// Enables display device for the instance.
  final pulumi.Input<DisplayDeviceComputeBeta>? displayDevice;
  /// Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;
  /// A list of the type and count of accelerator cards attached to the instance.
  final pulumi.Input<List<AcceleratorConfigComputeBeta>>? guestAccelerators;
  /// Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  final pulumi.Input<String>? hostname;
  /// Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? instanceEncryptionKey;
  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final pulumi.Input<InstanceKeyRevocationActionTypeComputeBeta>? keyRevocationActionType;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  /// Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  final pulumi.Input<String>? machineType;
  /// The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  final pulumi.Input<MetadataComputeBeta>? metadata;
  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  final pulumi.Input<String>? minCpuPlatform;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  final pulumi.Input<List<NetworkInterfaceComputeBeta>>? networkInterfaces;
  final pulumi.Input<NetworkPerformanceConfigComputeBeta>? networkPerformanceConfig;
  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<InstanceParamsComputeBeta>? params;
  /// PostKeyRevocationActionType of the instance.
  final pulumi.Input<InstancePostKeyRevocationActionTypeComputeBeta>? postKeyRevocationActionType;
  /// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  final pulumi.Input<InstancePrivateIpv6GoogleAccessComputeBeta>? privateIpv6GoogleAccess;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Specifies the reservations that this instance can consume from.
  final pulumi.Input<ReservationAffinityComputeBeta>? reservationAffinity;
  /// Resource policies applied to this instance.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Sets the scheduling options for this instance.
  final pulumi.Input<SchedulingComputeBeta>? scheduling;
  /// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  final pulumi.Input<List<ServiceAccountComputeBeta>>? serviceAccounts;
  final pulumi.Input<ShieldedInstanceConfigComputeBeta>? shieldedInstanceConfig;
  final pulumi.Input<ShieldedInstanceIntegrityPolicyComputeBeta>? shieldedInstanceIntegrityPolicy;
  /// Deprecating, please use shielded_instance_config.
  final pulumi.Input<ShieldedVmConfigComputeBeta>? shieldedVmConfig;
  /// Deprecating, please use shielded_instance_integrity_policy.
  final pulumi.Input<ShieldedVmIntegrityPolicyComputeBeta>? shieldedVmIntegrityPolicy;
  /// Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final pulumi.Input<String>? sourceInstanceTemplate;
  /// Source machine image
  final pulumi.Input<String>? sourceMachineImage;
  /// Source machine image encryption key when creating an instance from a machine image.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? sourceMachineImageEncryptionKey;
  /// Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  final pulumi.Input<TagsComputeBeta>? tags;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceComputeBetaArgs].
  /// [advancedMachineFeatures] Controls for advanced machine-related behavior features.
  /// [canIpForward] Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  /// [confidentialInstanceConfig] Optional.
  /// [deletionProtection] Whether the resource should be protected against deletion.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [disks] Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  /// [displayDevice] Enables display device for the instance.
  /// [eraseWindowsVssSignature] Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  /// [guestAccelerators] A list of the type and count of accelerator cards attached to the instance.
  /// [hostname] Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  /// [instanceEncryptionKey] Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  /// [keyRevocationActionType] KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [machineType] Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  /// [metadata] The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  /// [minCpuPlatform] Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [networkInterfaces] An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  /// [networkPerformanceConfig] Optional.
  /// [params] Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  /// [postKeyRevocationActionType] PostKeyRevocationActionType of the instance.
  /// [privateIpv6GoogleAccess] The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservationAffinity] Specifies the reservations that this instance can consume from.
  /// [resourcePolicies] Resource policies applied to this instance.
  /// [scheduling] Sets the scheduling options for this instance.
  /// [serviceAccounts] A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  /// [shieldedInstanceConfig] Optional.
  /// [shieldedInstanceIntegrityPolicy] Optional.
  /// [shieldedVmConfig] Deprecating, please use shielded_instance_config.
  /// [shieldedVmIntegrityPolicy] Deprecating, please use shielded_instance_integrity_policy.
  /// [sourceInstanceTemplate] Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  /// [sourceMachineImage] Source machine image
  /// [sourceMachineImageEncryptionKey] Source machine image encryption key when creating an instance from a machine image.
  /// [tags] Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  /// [zone] Optional.
  InstanceComputeBetaArgs({
    AdvancedMachineFeaturesComputeBeta? advancedMachineFeatures,
    bool? canIpForward,
    ConfidentialInstanceConfigComputeBeta? confidentialInstanceConfig,
    bool? deletionProtection,
    String? description,
    List<AttachedDiskComputeBeta>? disks,
    DisplayDeviceComputeBeta? displayDevice,
    bool? eraseWindowsVssSignature,
    List<AcceleratorConfigComputeBeta>? guestAccelerators,
    String? hostname,
    CustomerEncryptionKeyComputeBeta? instanceEncryptionKey,
    InstanceKeyRevocationActionTypeComputeBeta? keyRevocationActionType,
    Map<String, String>? labels,
    String? machineType,
    MetadataComputeBeta? metadata,
    String? minCpuPlatform,
    String? name,
    List<NetworkInterfaceComputeBeta>? networkInterfaces,
    NetworkPerformanceConfigComputeBeta? networkPerformanceConfig,
    InstanceParamsComputeBeta? params,
    InstancePostKeyRevocationActionTypeComputeBeta? postKeyRevocationActionType,
    InstancePrivateIpv6GoogleAccessComputeBeta? privateIpv6GoogleAccess,
    String? project,
    String? requestId,
    ReservationAffinityComputeBeta? reservationAffinity,
    List<String>? resourcePolicies,
    SchedulingComputeBeta? scheduling,
    List<ServiceAccountComputeBeta>? serviceAccounts,
    ShieldedInstanceConfigComputeBeta? shieldedInstanceConfig,
    ShieldedInstanceIntegrityPolicyComputeBeta? shieldedInstanceIntegrityPolicy,
    ShieldedVmConfigComputeBeta? shieldedVmConfig,
    ShieldedVmIntegrityPolicyComputeBeta? shieldedVmIntegrityPolicy,
    String? sourceInstanceTemplate,
    String? sourceMachineImage,
    CustomerEncryptionKeyComputeBeta? sourceMachineImageEncryptionKey,
    TagsComputeBeta? tags,
    String? zone,
  }) :
      advancedMachineFeatures = pulumi.Input.asOptionalInput<AdvancedMachineFeaturesComputeBeta>(advancedMachineFeatures),
      canIpForward = pulumi.Input.asOptionalInput<bool>(canIpForward),
      confidentialInstanceConfig = pulumi.Input.asOptionalInput<ConfidentialInstanceConfigComputeBeta>(confidentialInstanceConfig),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      disks = pulumi.Input.asOptionalInput<List<AttachedDiskComputeBeta>>(disks),
      displayDevice = pulumi.Input.asOptionalInput<DisplayDeviceComputeBeta>(displayDevice),
      eraseWindowsVssSignature = pulumi.Input.asOptionalInput<bool>(eraseWindowsVssSignature),
      guestAccelerators = pulumi.Input.asOptionalInput<List<AcceleratorConfigComputeBeta>>(guestAccelerators),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      instanceEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(instanceEncryptionKey),
      keyRevocationActionType = pulumi.Input.asOptionalInput<InstanceKeyRevocationActionTypeComputeBeta>(keyRevocationActionType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      machineType = pulumi.Input.asOptionalInput<String>(machineType),
      metadata = pulumi.Input.asOptionalInput<MetadataComputeBeta>(metadata),
      minCpuPlatform = pulumi.Input.asOptionalInput<String>(minCpuPlatform),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<List<NetworkInterfaceComputeBeta>>(networkInterfaces),
      networkPerformanceConfig = pulumi.Input.asOptionalInput<NetworkPerformanceConfigComputeBeta>(networkPerformanceConfig),
      params = pulumi.Input.asOptionalInput<InstanceParamsComputeBeta>(params),
      postKeyRevocationActionType = pulumi.Input.asOptionalInput<InstancePostKeyRevocationActionTypeComputeBeta>(postKeyRevocationActionType),
      privateIpv6GoogleAccess = pulumi.Input.asOptionalInput<InstancePrivateIpv6GoogleAccessComputeBeta>(privateIpv6GoogleAccess),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      reservationAffinity = pulumi.Input.asOptionalInput<ReservationAffinityComputeBeta>(reservationAffinity),
      resourcePolicies = pulumi.Input.asOptionalInput<List<String>>(resourcePolicies),
      scheduling = pulumi.Input.asOptionalInput<SchedulingComputeBeta>(scheduling),
      serviceAccounts = pulumi.Input.asOptionalInput<List<ServiceAccountComputeBeta>>(serviceAccounts),
      shieldedInstanceConfig = pulumi.Input.asOptionalInput<ShieldedInstanceConfigComputeBeta>(shieldedInstanceConfig),
      shieldedInstanceIntegrityPolicy = pulumi.Input.asOptionalInput<ShieldedInstanceIntegrityPolicyComputeBeta>(shieldedInstanceIntegrityPolicy),
      shieldedVmConfig = pulumi.Input.asOptionalInput<ShieldedVmConfigComputeBeta>(shieldedVmConfig),
      shieldedVmIntegrityPolicy = pulumi.Input.asOptionalInput<ShieldedVmIntegrityPolicyComputeBeta>(shieldedVmIntegrityPolicy),
      sourceInstanceTemplate = pulumi.Input.asOptionalInput<String>(sourceInstanceTemplate),
      sourceMachineImage = pulumi.Input.asOptionalInput<String>(sourceMachineImage),
      sourceMachineImageEncryptionKey = pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(sourceMachineImageEncryptionKey),
      tags = pulumi.Input.asOptionalInput<TagsComputeBeta>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMachineFeatures': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesComputeBeta, Map<String, dynamic>>(advancedMachineFeatures, (value) => value.toMap()),
      'canIpForward': ?canIpForward,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ConfidentialInstanceConfigComputeBeta, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDiskComputeBeta>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDiskComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayDevice': ?pulumi.Input.mapOptionalInputValue<DisplayDeviceComputeBeta, Map<String, dynamic>>(displayDevice, (value) => value.toMap()),
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeBeta>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': ?hostname,
      'instanceEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(instanceEncryptionKey, (value) => value.toMap()),
      'keyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstanceKeyRevocationActionTypeComputeBeta, String>(keyRevocationActionType, (value) => value.value),
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataComputeBeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceComputeBeta>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkPerformanceConfig': ?pulumi.Input.mapOptionalInputValue<NetworkPerformanceConfigComputeBeta, Map<String, dynamic>>(networkPerformanceConfig, (value) => value.toMap()),
      'params': ?pulumi.Input.mapOptionalInputValue<InstanceParamsComputeBeta, Map<String, dynamic>>(params, (value) => value.toMap()),
      'postKeyRevocationActionType': ?pulumi.Input.mapOptionalInputValue<InstancePostKeyRevocationActionTypeComputeBeta, String>(postKeyRevocationActionType, (value) => value.value),
      'privateIpv6GoogleAccess': ?pulumi.Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccessComputeBeta, String>(privateIpv6GoogleAccess, (value) => value.value),
      'project': ?project,
      'requestId': ?requestId,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<ReservationAffinityComputeBeta, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'scheduling': ?pulumi.Input.mapOptionalInputValue<SchedulingComputeBeta, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccountComputeBeta>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigComputeBeta, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'shieldedInstanceIntegrityPolicy': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceIntegrityPolicyComputeBeta, Map<String, dynamic>>(shieldedInstanceIntegrityPolicy, (value) => value.toMap()),
      'shieldedVmConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedVmConfigComputeBeta, Map<String, dynamic>>(shieldedVmConfig, (value) => value.toMap()),
      'shieldedVmIntegrityPolicy': ?pulumi.Input.mapOptionalInputValue<ShieldedVmIntegrityPolicyComputeBeta, Map<String, dynamic>>(shieldedVmIntegrityPolicy, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
      'sourceMachineImage': ?sourceMachineImage,
      'sourceMachineImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<CustomerEncryptionKeyComputeBeta, Map<String, dynamic>>(sourceMachineImageEncryptionKey, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<TagsComputeBeta, Map<String, dynamic>>(tags, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory InstanceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return InstanceComputeBetaArgs(
      advancedMachineFeatures: map['advancedMachineFeatures'] == null ? null : AdvancedMachineFeaturesComputeBeta.fromMap((map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      canIpForward: map['canIpForward'] == null ? null : map['canIpForward'] as bool,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : ConfidentialInstanceConfigComputeBeta.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>()),
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<AttachedDiskComputeBeta>(map['disks'], (value) => AttachedDiskComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      displayDevice: map['displayDevice'] == null ? null : DisplayDeviceComputeBeta.fromMap((map['displayDevice'] as Map).cast<String, dynamic>()),
      eraseWindowsVssSignature: map['eraseWindowsVssSignature'] == null ? null : map['eraseWindowsVssSignature'] as bool,
      guestAccelerators: map['guestAccelerators'] == null ? null : pulumi.Input.decodeList<AcceleratorConfigComputeBeta>(map['guestAccelerators'], (value) => AcceleratorConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      instanceEncryptionKey: map['instanceEncryptionKey'] == null ? null : CustomerEncryptionKeyComputeBeta.fromMap((map['instanceEncryptionKey'] as Map).cast<String, dynamic>()),
      keyRevocationActionType: map['keyRevocationActionType'] == null ? null : InstanceKeyRevocationActionTypeComputeBeta.fromValue(map['keyRevocationActionType'] as String),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null ? null : MetadataComputeBeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : map['minCpuPlatform'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceComputeBeta>(map['networkInterfaces'], (value) => NetworkInterfaceComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      networkPerformanceConfig: map['networkPerformanceConfig'] == null ? null : NetworkPerformanceConfigComputeBeta.fromMap((map['networkPerformanceConfig'] as Map).cast<String, dynamic>()),
      params: map['params'] == null ? null : InstanceParamsComputeBeta.fromMap((map['params'] as Map).cast<String, dynamic>()),
      postKeyRevocationActionType: map['postKeyRevocationActionType'] == null ? null : InstancePostKeyRevocationActionTypeComputeBeta.fromValue(map['postKeyRevocationActionType'] as String),
      privateIpv6GoogleAccess: map['privateIpv6GoogleAccess'] == null ? null : InstancePrivateIpv6GoogleAccessComputeBeta.fromValue(map['privateIpv6GoogleAccess'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      reservationAffinity: map['reservationAffinity'] == null ? null : ReservationAffinityComputeBeta.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>()),
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies'] as List).cast<String>(),
      scheduling: map['scheduling'] == null ? null : SchedulingComputeBeta.fromMap((map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccounts: map['serviceAccounts'] == null ? null : pulumi.Input.decodeList<ServiceAccountComputeBeta>(map['serviceAccounts'], (value) => ServiceAccountComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : ShieldedInstanceConfigComputeBeta.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      shieldedInstanceIntegrityPolicy: map['shieldedInstanceIntegrityPolicy'] == null ? null : ShieldedInstanceIntegrityPolicyComputeBeta.fromMap((map['shieldedInstanceIntegrityPolicy'] as Map).cast<String, dynamic>()),
      shieldedVmConfig: map['shieldedVmConfig'] == null ? null : ShieldedVmConfigComputeBeta.fromMap((map['shieldedVmConfig'] as Map).cast<String, dynamic>()),
      shieldedVmIntegrityPolicy: map['shieldedVmIntegrityPolicy'] == null ? null : ShieldedVmIntegrityPolicyComputeBeta.fromMap((map['shieldedVmIntegrityPolicy'] as Map).cast<String, dynamic>()),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] == null ? null : map['sourceInstanceTemplate'] as String,
      sourceMachineImage: map['sourceMachineImage'] == null ? null : map['sourceMachineImage'] as String,
      sourceMachineImageEncryptionKey: map['sourceMachineImageEncryptionKey'] == null ? null : CustomerEncryptionKeyComputeBeta.fromMap((map['sourceMachineImageEncryptionKey'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : TagsComputeBeta.fromMap((map['tags'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

