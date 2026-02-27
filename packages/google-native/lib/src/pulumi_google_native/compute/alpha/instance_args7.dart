// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config.dart';
import 'advanced_machine_features.dart';
import 'attached_disk2.dart';
import 'confidential_instance_config.dart';
import 'customer_encryption_key.dart';
import 'display_device.dart';
import 'instance_key_revocation_action_type.dart';
import 'instance_params.dart';
import 'instance_post_key_revocation_action_type.dart';
import 'instance_private_ipv6_google_access.dart';
import 'metadata.dart';
import 'network_interface2.dart';
import 'network_performance_config.dart';
import 'reservation_affinity.dart';
import 'scheduling.dart';
import 'service_account3.dart';
import 'shielded_instance_config.dart';
import 'shielded_instance_integrity_policy.dart';
import 'shielded_vm_config.dart';
import 'shielded_vm_integrity_policy.dart';
import 'tags.dart';

/// The set of arguments for Instance.
class InstanceArgs7 {
  /// Controls for advanced machine-related behavior features.
  final Input<AdvancedMachineFeatures>? advancedMachineFeatures;

  /// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  final Input<bool>? canIpForward;
  final Input<ConfidentialInstanceConfig>? confidentialInstanceConfig;

  /// Whether the resource should be protected against deletion.
  final Input<bool>? deletionProtection;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  final Input<List<AttachedDisk2>>? disks;

  /// Enables display device for the instance.
  final Input<DisplayDevice>? displayDevice;

  /// Specifies whether the disks restored from source snapshots or source machine image should erase Windows specific VSS signature.
  final Input<bool>? eraseWindowsVssSignature;

  /// A list of the type and count of accelerator cards attached to the instance.
  final Input<List<AcceleratorConfig>>? guestAccelerators;

  /// Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  final Input<String>? hostname;

  /// Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  final Input<CustomerEncryptionKey>? instanceEncryptionKey;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final Input<InstanceKeyRevocationActionType>? keyRevocationActionType;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final Input<Map<String, String>>? labels;

  /// Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  final Input<String>? machineType;

  /// The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  final Input<Metadata>? metadata;

  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  final Input<String>? minCpuPlatform;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  final Input<List<NetworkInterface2>>? networkInterfaces;
  final Input<NetworkPerformanceConfig>? networkPerformanceConfig;

  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final Input<InstanceParams>? params;

  /// Partner Metadata assigned to the instance. A map from a subdomain (namespace) to entries map.
  final Input<Map<String, String>>? partnerMetadata;

  /// PostKeyRevocationActionType of the instance.
  final Input<InstancePostKeyRevocationActionType>? postKeyRevocationActionType;

  /// Total amount of preserved state for SUSPENDED instances. Read-only in the api.
  final Input<String>? preservedStateSizeGb;

  /// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  final Input<InstancePrivateIpv6GoogleAccess>? privateIpv6GoogleAccess;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Specifies the reservations that this instance can consume from.
  final Input<ReservationAffinity>? reservationAffinity;

  /// Resource policies applied to this instance.
  final Input<List<String>>? resourcePolicies;

  /// Sets the scheduling options for this instance.
  final Input<Scheduling>? scheduling;

  /// [Input Only] Secure tags to apply to this instance. These can be later modified by the update method. Maximum number of secure tags allowed is 50.
  final Input<List<String>>? secureTags;

  /// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  final Input<List<ServiceAccount3>>? serviceAccounts;

  /// Mapping of user-defined keys to specifications for service integrations. Currently only a single key-value pair is supported.
  final Input<Map<String, String>>? serviceIntegrationSpecs;
  final Input<ShieldedInstanceConfig>? shieldedInstanceConfig;
  final Input<ShieldedInstanceIntegrityPolicy>? shieldedInstanceIntegrityPolicy;

  /// Deprecating, please use shielded_instance_config.
  final Input<ShieldedVmConfig>? shieldedVmConfig;

  /// Deprecating, please use shielded_instance_integrity_policy.
  final Input<ShieldedVmIntegrityPolicy>? shieldedVmIntegrityPolicy;

  /// Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final Input<String>? sourceInstanceTemplate;

  /// Source machine image
  final Input<String>? sourceMachineImage;

  /// Source machine image encryption key when creating an instance from a machine image.
  final Input<CustomerEncryptionKey>? sourceMachineImageEncryptionKey;

  /// Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  final Input<Tags>? tags;
  final Input<String>? zone;

  InstanceArgs7({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.eraseWindowsVssSignature,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.partnerMetadata,
    this.postKeyRevocationActionType,
    this.preservedStateSizeGb,
    this.privateIpv6GoogleAccess,
    this.project,
    this.requestId,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.secureTags,
    this.serviceAccounts,
    this.serviceIntegrationSpecs,
    this.shieldedInstanceConfig,
    this.shieldedInstanceIntegrityPolicy,
    this.shieldedVmConfig,
    this.shieldedVmIntegrityPolicy,
    this.sourceInstanceTemplate,
    this.sourceMachineImage,
    this.sourceMachineImageEncryptionKey,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = Input.mapOptionalInputValue<
              AdvancedMachineFeatures, Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = Input.mapOptionalInputValue<
              ConfidentialInstanceConfig, Map<String, dynamic>>(
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
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.mapOptionalInputValue<List<AttachedDisk2>,
              List<Map<String, dynamic>>>(
          disksValue,
          (value) => Input.encodeList<AttachedDisk2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final displayDeviceValue = displayDevice;
    if (displayDeviceValue != null) {
      map['displayDevice'] =
          Input.mapOptionalInputValue<DisplayDevice, Map<String, dynamic>>(
              displayDeviceValue, (value) => value.toMap());
    }
    final eraseWindowsVssSignatureValue = eraseWindowsVssSignature;
    if (eraseWindowsVssSignatureValue != null) {
      map['eraseWindowsVssSignature'] = eraseWindowsVssSignatureValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = Input.mapOptionalInputValue<
              List<AcceleratorConfig>, List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final instanceEncryptionKeyValue = instanceEncryptionKey;
    if (instanceEncryptionKeyValue != null) {
      map['instanceEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey, Map<String, dynamic>>(
          instanceEncryptionKeyValue, (value) => value.toMap());
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] =
          Input.mapOptionalInputValue<InstanceKeyRevocationActionType, String>(
              keyRevocationActionTypeValue, (value) => value.value);
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
      map['metadata'] =
          Input.mapOptionalInputValue<Metadata, Map<String, dynamic>>(
              metadataValue, (value) => value.toMap());
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
      map['networkInterfaces'] = Input.mapOptionalInputValue<
              List<NetworkInterface2>, List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<NetworkInterface2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              NetworkPerformanceConfig, Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = partnerMetadataValue;
    }
    final postKeyRevocationActionTypeValue = postKeyRevocationActionType;
    if (postKeyRevocationActionTypeValue != null) {
      map['postKeyRevocationActionType'] = Input.mapOptionalInputValue<
          InstancePostKeyRevocationActionType,
          String>(postKeyRevocationActionTypeValue, (value) => value.value);
    }
    final preservedStateSizeGbValue = preservedStateSizeGb;
    if (preservedStateSizeGbValue != null) {
      map['preservedStateSizeGb'] = preservedStateSizeGbValue;
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] =
          Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccess, String>(
              privateIpv6GoogleAccessValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = Input.mapOptionalInputValue<
              ReservationAffinity, Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] =
          Input.mapOptionalInputValue<Scheduling, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final secureTagsValue = secureTags;
    if (secureTagsValue != null) {
      map['secureTags'] = secureTagsValue;
    }
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] = Input.mapOptionalInputValue<
              List<ServiceAccount3>, List<Map<String, dynamic>>>(
          serviceAccountsValue,
          (value) => Input.encodeList<ServiceAccount3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final serviceIntegrationSpecsValue = serviceIntegrationSpecs;
    if (serviceIntegrationSpecsValue != null) {
      map['serviceIntegrationSpecs'] = serviceIntegrationSpecsValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              ShieldedInstanceConfig, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final shieldedInstanceIntegrityPolicyValue =
        shieldedInstanceIntegrityPolicy;
    if (shieldedInstanceIntegrityPolicyValue != null) {
      map['shieldedInstanceIntegrityPolicy'] = Input.mapOptionalInputValue<
              ShieldedInstanceIntegrityPolicy, Map<String, dynamic>>(
          shieldedInstanceIntegrityPolicyValue, (value) => value.toMap());
    }
    final shieldedVmConfigValue = shieldedVmConfig;
    if (shieldedVmConfigValue != null) {
      map['shieldedVmConfig'] =
          Input.mapOptionalInputValue<ShieldedVmConfig, Map<String, dynamic>>(
              shieldedVmConfigValue, (value) => value.toMap());
    }
    final shieldedVmIntegrityPolicyValue = shieldedVmIntegrityPolicy;
    if (shieldedVmIntegrityPolicyValue != null) {
      map['shieldedVmIntegrityPolicy'] = Input.mapOptionalInputValue<
              ShieldedVmIntegrityPolicy, Map<String, dynamic>>(
          shieldedVmIntegrityPolicyValue, (value) => value.toMap());
    }
    final sourceInstanceTemplateValue = sourceInstanceTemplate;
    if (sourceInstanceTemplateValue != null) {
      map['sourceInstanceTemplate'] = sourceInstanceTemplateValue;
    }
    final sourceMachineImageValue = sourceMachineImage;
    if (sourceMachineImageValue != null) {
      map['sourceMachineImage'] = sourceMachineImageValue;
    }
    final sourceMachineImageEncryptionKeyValue =
        sourceMachineImageEncryptionKey;
    if (sourceMachineImageEncryptionKeyValue != null) {
      map['sourceMachineImageEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey, Map<String, dynamic>>(
          sourceMachineImageEncryptionKeyValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = Input.mapOptionalInputValue<Tags, Map<String, dynamic>>(
          tagsValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceArgs7.fromMap(Map<String, dynamic> map) {
    return InstanceArgs7(
      advancedMachineFeatures: Input.asOptionalInput<AdvancedMachineFeatures>(
          map['advancedMachineFeatures']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig:
          Input.asOptionalInput<ConfidentialInstanceConfig>(
              map['confidentialInstanceConfig']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asOptionalInput<List<AttachedDisk2>>(map['disks']),
      displayDevice: Input.asOptionalInput<DisplayDevice>(map['displayDevice']),
      eraseWindowsVssSignature:
          Input.asOptionalInput<bool>(map['eraseWindowsVssSignature']),
      guestAccelerators: Input.asOptionalInput<List<AcceleratorConfig>>(
          map['guestAccelerators']),
      hostname: Input.asOptionalInput<String>(map['hostname']),
      instanceEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey>(
          map['instanceEncryptionKey']),
      keyRevocationActionType:
          Input.asOptionalInput<InstanceKeyRevocationActionType>(
              map['keyRevocationActionType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: Input.asOptionalInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Metadata>(map['metadata']),
      minCpuPlatform: Input.asOptionalInput<String>(map['minCpuPlatform']),
      name: Input.asOptionalInput<String>(map['name']),
      networkInterfaces: Input.asOptionalInput<List<NetworkInterface2>>(
          map['networkInterfaces']),
      networkPerformanceConfig: Input.asOptionalInput<NetworkPerformanceConfig>(
          map['networkPerformanceConfig']),
      params: Input.asOptionalInput<InstanceParams>(map['params']),
      partnerMetadata:
          Input.asOptionalInput<Map<String, String>>(map['partnerMetadata']),
      postKeyRevocationActionType:
          Input.asOptionalInput<InstancePostKeyRevocationActionType>(
              map['postKeyRevocationActionType']),
      preservedStateSizeGb:
          Input.asOptionalInput<String>(map['preservedStateSizeGb']),
      privateIpv6GoogleAccess:
          Input.asOptionalInput<InstancePrivateIpv6GoogleAccess>(
              map['privateIpv6GoogleAccess']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reservationAffinity: Input.asOptionalInput<ReservationAffinity>(
          map['reservationAffinity']),
      resourcePolicies:
          Input.asOptionalInput<List<String>>(map['resourcePolicies']),
      scheduling: Input.asOptionalInput<Scheduling>(map['scheduling']),
      secureTags: Input.asOptionalInput<List<String>>(map['secureTags']),
      serviceAccounts:
          Input.asOptionalInput<List<ServiceAccount3>>(map['serviceAccounts']),
      serviceIntegrationSpecs: Input.asOptionalInput<Map<String, String>>(
          map['serviceIntegrationSpecs']),
      shieldedInstanceConfig: Input.asOptionalInput<ShieldedInstanceConfig>(
          map['shieldedInstanceConfig']),
      shieldedInstanceIntegrityPolicy:
          Input.asOptionalInput<ShieldedInstanceIntegrityPolicy>(
              map['shieldedInstanceIntegrityPolicy']),
      shieldedVmConfig:
          Input.asOptionalInput<ShieldedVmConfig>(map['shieldedVmConfig']),
      shieldedVmIntegrityPolicy:
          Input.asOptionalInput<ShieldedVmIntegrityPolicy>(
              map['shieldedVmIntegrityPolicy']),
      sourceInstanceTemplate:
          Input.asOptionalInput<String>(map['sourceInstanceTemplate']),
      sourceMachineImage:
          Input.asOptionalInput<String>(map['sourceMachineImage']),
      sourceMachineImageEncryptionKey:
          Input.asOptionalInput<CustomerEncryptionKey>(
              map['sourceMachineImageEncryptionKey']),
      tags: Input.asOptionalInput<Tags>(map['tags']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
