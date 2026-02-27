// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config3.dart';
import 'advanced_machine_features3.dart';
import 'attached_disk4.dart';
import 'confidential_instance_config3.dart';
import 'customer_encryption_key3.dart';
import 'display_device3.dart';
import 'instance_key_revocation_action_type3.dart';
import 'instance_params3.dart';
import 'instance_private_ipv6_google_access3.dart';
import 'metadata3.dart';
import 'network_interface4.dart';
import 'network_performance_config3.dart';
import 'reservation_affinity3.dart';
import 'scheduling3.dart';
import 'service_account5.dart';
import 'shielded_instance_config3.dart';
import 'shielded_instance_integrity_policy3.dart';
import 'tags3.dart';

/// The set of arguments for Instance.
class InstanceArgs9 {
  /// Controls for advanced machine-related behavior features.
  final Input<AdvancedMachineFeatures3>? advancedMachineFeatures;

  /// Allows this instance to send and receive packets with non-matching destination or source IPs. This is required if you plan to use this instance to forward routes. For more information, see Enabling IP Forwarding .
  final Input<bool>? canIpForward;
  final Input<ConfidentialInstanceConfig3>? confidentialInstanceConfig;

  /// Whether the resource should be protected against deletion.
  final Input<bool>? deletionProtection;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Array of disks associated with this instance. Persistent disks must be created before you can assign them.
  final Input<List<AttachedDisk4>>? disks;

  /// Enables display device for the instance.
  final Input<DisplayDevice3>? displayDevice;

  /// A list of the type and count of accelerator cards attached to the instance.
  final Input<List<AcceleratorConfig3>>? guestAccelerators;

  /// Specifies the hostname of the instance. The specified hostname must be RFC1035 compliant. If hostname is not specified, the default hostname is [INSTANCE_NAME].c.[PROJECT_ID].internal when using the global DNS, and [INSTANCE_NAME].[ZONE].c.[PROJECT_ID].internal when using zonal DNS.
  final Input<String>? hostname;

  /// Encrypts suspended data for an instance with a customer-managed encryption key. If you are creating a new instance, this field will encrypt the local SSD and in-memory contents of the instance during the suspend operation. If you do not provide an encryption key when creating the instance, then the local SSD and in-memory contents will be encrypted using an automatically generated key during the suspend operation.
  final Input<CustomerEncryptionKey3>? instanceEncryptionKey;

  /// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
  final Input<InstanceKeyRevocationActionType3>? keyRevocationActionType;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final Input<Map<String, String>>? labels;

  /// Full or partial URL of the machine type resource to use for this instance, in the format: zones/zone/machineTypes/machine-type. This is provided by the client when the instance is created. For example, the following is a valid partial url to a predefined machine type: zones/us-central1-f/machineTypes/n1-standard-1 To create a custom machine type, provide a URL to a machine type in the following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24, etc), and MEMORY is the total memory for this instance. Memory must be a multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB): zones/zone/machineTypes/custom-CPUS-MEMORY For example: zones/us-central1-f/machineTypes/custom-4-5120 For a full list of restrictions, read the Specifications for custom machine types.
  final Input<String>? machineType;

  /// The metadata key/value pairs assigned to this instance. This includes custom metadata and predefined keys.
  final Input<Metadata3>? metadata;

  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge".
  final Input<String>? minCpuPlatform;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// An array of network configurations for this instance. These specify how interfaces are configured to interact with other network services, such as connecting to the internet. Multiple interfaces are supported per instance.
  final Input<List<NetworkInterface4>>? networkInterfaces;
  final Input<NetworkPerformanceConfig3>? networkPerformanceConfig;

  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final Input<InstanceParams3>? params;

  /// The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBNETWORK as default.
  final Input<InstancePrivateIpv6GoogleAccess3>? privateIpv6GoogleAccess;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Specifies the reservations that this instance can consume from.
  final Input<ReservationAffinity3>? reservationAffinity;

  /// Resource policies applied to this instance.
  final Input<List<String>>? resourcePolicies;

  /// Sets the scheduling options for this instance.
  final Input<Scheduling3>? scheduling;

  /// A list of service accounts, with their specified scopes, authorized for this instance. Only one service account per VM instance is supported. Service accounts generate access tokens that can be accessed through the metadata server and used to authenticate applications on the instance. See Service Accounts for more information.
  final Input<List<ServiceAccount5>>? serviceAccounts;
  final Input<ShieldedInstanceConfig3>? shieldedInstanceConfig;
  final Input<ShieldedInstanceIntegrityPolicy3>?
      shieldedInstanceIntegrityPolicy;

  /// Specifies instance template to create the instance. This field is optional. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate
  final Input<String>? sourceInstanceTemplate;

  /// Source machine image
  final Input<String>? sourceMachineImage;

  /// Source machine image encryption key when creating an instance from a machine image.
  final Input<CustomerEncryptionKey3>? sourceMachineImageEncryptionKey;

  /// Tags to apply to this instance. Tags are used to identify valid sources or targets for network firewalls and are specified by the client during instance creation. The tags can be later modified by the setTags method. Each tag within the list must comply with RFC1035. Multiple tags can be specified via the 'tags.items' field.
  final Input<Tags3>? tags;
  final Input<String>? zone;

  InstanceArgs9({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
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
    this.privateIpv6GoogleAccess,
    this.project,
    this.requestId,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.shieldedInstanceIntegrityPolicy,
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
              AdvancedMachineFeatures3, Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = Input.mapOptionalInputValue<
              ConfidentialInstanceConfig3, Map<String, dynamic>>(
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
      map['disks'] = Input.mapOptionalInputValue<List<AttachedDisk4>,
              List<Map<String, dynamic>>>(
          disksValue,
          (value) => Input.encodeList<AttachedDisk4, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final displayDeviceValue = displayDevice;
    if (displayDeviceValue != null) {
      map['displayDevice'] =
          Input.mapOptionalInputValue<DisplayDevice3, Map<String, dynamic>>(
              displayDeviceValue, (value) => value.toMap());
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = Input.mapOptionalInputValue<
              List<AcceleratorConfig3>, List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) => Input.encodeList<AcceleratorConfig3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final instanceEncryptionKeyValue = instanceEncryptionKey;
    if (instanceEncryptionKeyValue != null) {
      map['instanceEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          instanceEncryptionKeyValue, (value) => value.toMap());
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] =
          Input.mapOptionalInputValue<InstanceKeyRevocationActionType3, String>(
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
          Input.mapOptionalInputValue<Metadata3, Map<String, dynamic>>(
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
              List<NetworkInterface4>, List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<NetworkInterface4, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              NetworkPerformanceConfig3, Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<InstanceParams3, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final privateIpv6GoogleAccessValue = privateIpv6GoogleAccess;
    if (privateIpv6GoogleAccessValue != null) {
      map['privateIpv6GoogleAccess'] =
          Input.mapOptionalInputValue<InstancePrivateIpv6GoogleAccess3, String>(
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
              ReservationAffinity3, Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] =
          Input.mapOptionalInputValue<Scheduling3, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final serviceAccountsValue = serviceAccounts;
    if (serviceAccountsValue != null) {
      map['serviceAccounts'] = Input.mapOptionalInputValue<
              List<ServiceAccount5>, List<Map<String, dynamic>>>(
          serviceAccountsValue,
          (value) => Input.encodeList<ServiceAccount5, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              ShieldedInstanceConfig3, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final shieldedInstanceIntegrityPolicyValue =
        shieldedInstanceIntegrityPolicy;
    if (shieldedInstanceIntegrityPolicyValue != null) {
      map['shieldedInstanceIntegrityPolicy'] = Input.mapOptionalInputValue<
              ShieldedInstanceIntegrityPolicy3, Map<String, dynamic>>(
          shieldedInstanceIntegrityPolicyValue, (value) => value.toMap());
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
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceMachineImageEncryptionKeyValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = Input.mapOptionalInputValue<Tags3, Map<String, dynamic>>(
          tagsValue, (value) => value.toMap());
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceArgs9.fromMap(Map<String, dynamic> map) {
    return InstanceArgs9(
      advancedMachineFeatures: Input.asOptionalInput<AdvancedMachineFeatures3>(
          map['advancedMachineFeatures']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig:
          Input.asOptionalInput<ConfidentialInstanceConfig3>(
              map['confidentialInstanceConfig']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asOptionalInput<List<AttachedDisk4>>(map['disks']),
      displayDevice:
          Input.asOptionalInput<DisplayDevice3>(map['displayDevice']),
      guestAccelerators: Input.asOptionalInput<List<AcceleratorConfig3>>(
          map['guestAccelerators']),
      hostname: Input.asOptionalInput<String>(map['hostname']),
      instanceEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['instanceEncryptionKey']),
      keyRevocationActionType:
          Input.asOptionalInput<InstanceKeyRevocationActionType3>(
              map['keyRevocationActionType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: Input.asOptionalInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Metadata3>(map['metadata']),
      minCpuPlatform: Input.asOptionalInput<String>(map['minCpuPlatform']),
      name: Input.asOptionalInput<String>(map['name']),
      networkInterfaces: Input.asOptionalInput<List<NetworkInterface4>>(
          map['networkInterfaces']),
      networkPerformanceConfig:
          Input.asOptionalInput<NetworkPerformanceConfig3>(
              map['networkPerformanceConfig']),
      params: Input.asOptionalInput<InstanceParams3>(map['params']),
      privateIpv6GoogleAccess:
          Input.asOptionalInput<InstancePrivateIpv6GoogleAccess3>(
              map['privateIpv6GoogleAccess']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reservationAffinity: Input.asOptionalInput<ReservationAffinity3>(
          map['reservationAffinity']),
      resourcePolicies:
          Input.asOptionalInput<List<String>>(map['resourcePolicies']),
      scheduling: Input.asOptionalInput<Scheduling3>(map['scheduling']),
      serviceAccounts:
          Input.asOptionalInput<List<ServiceAccount5>>(map['serviceAccounts']),
      shieldedInstanceConfig: Input.asOptionalInput<ShieldedInstanceConfig3>(
          map['shieldedInstanceConfig']),
      shieldedInstanceIntegrityPolicy:
          Input.asOptionalInput<ShieldedInstanceIntegrityPolicy3>(
              map['shieldedInstanceIntegrityPolicy']),
      sourceInstanceTemplate:
          Input.asOptionalInput<String>(map['sourceInstanceTemplate']),
      sourceMachineImage:
          Input.asOptionalInput<String>(map['sourceMachineImage']),
      sourceMachineImageEncryptionKey:
          Input.asOptionalInput<CustomerEncryptionKey3>(
              map['sourceMachineImageEncryptionKey']),
      tags: Input.asOptionalInput<Tags3>(map['tags']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
