// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_container_group_response.dart';
import 'container_group_diagnostics_response.dart';
import 'container_group_identity_response.dart';
import 'container_group_profile_reference_definition_response.dart';
import 'container_group_properties_response_instance_view.dart';
import 'container_group_subnet_id_response.dart';
import 'deployment_extension_spec_response.dart';
import 'dns_configuration_response.dart';
import 'encryption_properties_response.dart';
import 'image_registry_credential_container_group_response.dart';
import 'init_container_definition_container_group_response.dart';
import 'ip_address_response.dart';
import 'standby_pool_profile_definition_response.dart';
import 'volume_container_group_response.dart';

/// Result data returned by getContainerGroup.
class GetContainerGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties for confidential container group
  final ConfidentialComputePropertiesResponse? confidentialComputeProperties;
  /// The reference container group profile properties.
  final ContainerGroupProfileReferenceDefinitionResponse? containerGroupProfile;
  /// The containers within the container group.
  final List<ContainerContainerGroupResponse> containers;
  /// The diagnostic information for a container group.
  final ContainerGroupDiagnosticsResponse? diagnostics;
  /// The DNS config information for a container group.
  final DnsConfigurationResponse? dnsConfig;
  /// The encryption properties for a container group.
  final EncryptionPropertiesResponse? encryptionProperties;
  /// extensions used by virtual kubelet
  final List<DeploymentExtensionSpecResponse>? extensions;
  /// The resource id.
  final String id;
  /// The identity of the container group, if configured.
  final ContainerGroupIdentityResponse? identity;
  /// The image registry credentials by which the container group is created from.
  final List<ImageRegistryCredentialContainerGroupResponse>? imageRegistryCredentials;
  /// The init containers for a container group.
  final List<InitContainerDefinitionContainerGroupResponse>? initContainers;
  /// The instance view of the container group. Only valid in response.
  final ContainerGroupPropertiesResponseInstanceView instanceView;
  /// The IP address type of the container group.
  final IpAddressResponse? ipAddress;
  /// The flag indicating whether the container group is created by standby pool.
  final bool isCreatedFromStandbyPool;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String name;
  /// The operating system type required by the containers in the container group.
  final String? osType;
  /// The priority of the container group.
  final String? priority;
  /// The provisioning state of the container group. This only appears in the response.
  final String provisioningState;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  final String? restartPolicy;
  /// The SKU for a container group.
  final String? sku;
  /// The reference standby pool profile properties.
  final StandbyPoolProfileDefinitionResponse? standbyPoolProfile;
  /// The subnet resource IDs for a container group.
  final List<ContainerGroupSubnetIdResponse>? subnetIds;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;
  /// The list of volumes that can be mounted by containers in this container group.
  final List<VolumeContainerGroupResponse>? volumes;
  /// The zones for the container group.
  final List<String>? zones;

  /// Creates a new [GetContainerGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [confidentialComputeProperties] The properties for confidential container group
  /// [containerGroupProfile] The reference container group profile properties.
  /// [containers] The containers within the container group.
  /// [diagnostics] The diagnostic information for a container group.
  /// [dnsConfig] The DNS config information for a container group.
  /// [encryptionProperties] The encryption properties for a container group.
  /// [extensions] extensions used by virtual kubelet
  /// [id] The resource id.
  /// [identity] The identity of the container group, if configured.
  /// [imageRegistryCredentials] The image registry credentials by which the container group is created from.
  /// [initContainers] The init containers for a container group.
  /// [instanceView] The instance view of the container group. Only valid in response.
  /// [ipAddress] The IP address type of the container group.
  /// [isCreatedFromStandbyPool] The flag indicating whether the container group is created by standby pool.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [osType] The operating system type required by the containers in the container group.
  /// [priority] The priority of the container group.
  /// [provisioningState] The provisioning state of the container group. This only appears in the response.
  /// [restartPolicy] Restart policy for all containers within the container group.
  /// [sku] The SKU for a container group.
  /// [standbyPoolProfile] The reference standby pool profile properties.
  /// [subnetIds] The subnet resource IDs for a container group.
  /// [tags] The resource tags.
  /// [type] The resource type.
  /// [volumes] The list of volumes that can be mounted by containers in this container group.
  /// [zones] The zones for the container group.
  const GetContainerGroupResult({
    required this.azureApiVersion,
    this.confidentialComputeProperties,
    this.containerGroupProfile,
    required this.containers,
    this.diagnostics,
    this.dnsConfig,
    this.encryptionProperties,
    this.extensions,
    required this.id,
    this.identity,
    this.imageRegistryCredentials,
    this.initContainers,
    required this.instanceView,
    this.ipAddress,
    required this.isCreatedFromStandbyPool,
    this.location,
    required this.name,
    this.osType,
    this.priority,
    required this.provisioningState,
    this.restartPolicy,
    this.sku,
    this.standbyPoolProfile,
    this.subnetIds,
    this.tags,
    required this.type,
    this.volumes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'confidentialComputeProperties': ?confidentialComputeProperties?.toMap(),
      'containerGroupProfile': ?containerGroupProfile?.toMap(),
      'containers': pulumi.Input.encodeList<ContainerContainerGroupResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'diagnostics': ?diagnostics?.toMap(),
      'dnsConfig': ?dnsConfig?.toMap(),
      'encryptionProperties': ?encryptionProperties?.toMap(),
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeploymentExtensionSpecResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'identity': ?identity?.toMap(),
      'imageRegistryCredentials': ?(() { final guardedValue = imageRegistryCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageRegistryCredentialContainerGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'initContainers': ?(() { final guardedValue = initContainers; if (guardedValue == null) return null; return pulumi.Input.encodeList<InitContainerDefinitionContainerGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceView': instanceView.toMap(),
      'ipAddress': ?ipAddress?.toMap(),
      'isCreatedFromStandbyPool': isCreatedFromStandbyPool,
      'location': ?location,
      'name': name,
      'osType': ?osType,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'restartPolicy': ?restartPolicy,
      'sku': ?sku,
      'standbyPoolProfile': ?standbyPoolProfile?.toMap(),
      'subnetIds': ?(() { final guardedValue = subnetIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerGroupSubnetIdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': type,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeContainerGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetContainerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      confidentialComputeProperties: (() { final guardedValue = map['confidentialComputeProperties']; if (guardedValue == null) return null; return ConfidentialComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      containerGroupProfile: (() { final guardedValue = map['containerGroupProfile']; if (guardedValue == null) return null; return ContainerGroupProfileReferenceDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      containers: pulumi.Input.decodeList<ContainerContainerGroupResponse>(map['containers']!, (value) => ContainerContainerGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return ContainerGroupDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dnsConfig: (() { final guardedValue = map['dnsConfig']; if (guardedValue == null) return null; return DnsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionProperties: (() { final guardedValue = map['encryptionProperties']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(guardedValue, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ContainerGroupIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageRegistryCredentialContainerGroupResponse>(guardedValue, (value) => ImageRegistryCredentialContainerGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InitContainerDefinitionContainerGroupResponse>(guardedValue, (value) => InitContainerDefinitionContainerGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceView: ContainerGroupPropertiesResponseInstanceView.fromMap((map['instanceView']! as Map).cast<String, dynamic>()),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return IpAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isCreatedFromStandbyPool: map['isCreatedFromStandbyPool'] as bool,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyPoolProfile: (() { final guardedValue = map['standbyPoolProfile']; if (guardedValue == null) return null; return StandbyPoolProfileDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerGroupSubnetIdResponse>(guardedValue, (value) => ContainerGroupSubnetIdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeContainerGroupResponse>(guardedValue, (value) => VolumeContainerGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
