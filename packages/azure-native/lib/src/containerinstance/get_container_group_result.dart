// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_group_diagnostics_response.dart';
import 'container_group_identity_response.dart';
import 'container_group_profile_reference_definition_response.dart';
import 'container_group_properties_response_instance_view.dart';
import 'container_group_subnet_id_response.dart';
import 'container_response.dart';
import 'deployment_extension_spec_response.dart';
import 'dns_configuration_response.dart';
import 'encryption_properties_response.dart';
import 'image_registry_credential_response.dart';
import 'init_container_definition_response.dart';
import 'ip_address_response.dart';
import 'standby_pool_profile_definition_response.dart';
import 'volume_response.dart';

/// Result data returned by getContainerGroup.
class GetContainerGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties for confidential container group
  final ConfidentialComputePropertiesResponse? confidentialComputeProperties;
  /// The reference container group profile properties.
  final ContainerGroupProfileReferenceDefinitionResponse? containerGroupProfile;
  /// The containers within the container group.
  final List<ContainerResponse> containers;
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
  final List<ImageRegistryCredentialResponse>? imageRegistryCredentials;
  /// The init containers for a container group.
  final List<InitContainerDefinitionResponse>? initContainers;
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
  final List<VolumeResponse>? volumes;
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
  GetContainerGroupResult({
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
      'confidentialComputeProperties': ?confidentialComputeProperties == null ? null : confidentialComputeProperties!.toMap(),
      'containerGroupProfile': ?containerGroupProfile == null ? null : containerGroupProfile!.toMap(),
      'containers': pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'dnsConfig': ?dnsConfig == null ? null : dnsConfig!.toMap(),
      'encryptionProperties': ?encryptionProperties == null ? null : encryptionProperties!.toMap(),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<DeploymentExtensionSpecResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'imageRegistryCredentials': ?imageRegistryCredentials == null ? null : pulumi.Input.encodeList<ImageRegistryCredentialResponse, Map<String, dynamic>>(imageRegistryCredentials!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainerDefinitionResponse, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'instanceView': instanceView.toMap(),
      'ipAddress': ?ipAddress == null ? null : ipAddress!.toMap(),
      'isCreatedFromStandbyPool': isCreatedFromStandbyPool,
      'location': ?location,
      'name': name,
      'osType': ?osType,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'restartPolicy': ?restartPolicy,
      'sku': ?sku,
      'standbyPoolProfile': ?standbyPoolProfile == null ? null : standbyPoolProfile!.toMap(),
      'subnetIds': ?subnetIds == null ? null : pulumi.Input.encodeList<ContainerGroupSubnetIdResponse, Map<String, dynamic>>(subnetIds!, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory GetContainerGroupResult.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      confidentialComputeProperties: map['confidentialComputeProperties'] == null ? null : ConfidentialComputePropertiesResponse.fromMap((map['confidentialComputeProperties'] as Map).cast<String, dynamic>()),
      containerGroupProfile: map['containerGroupProfile'] == null ? null : ContainerGroupProfileReferenceDefinitionResponse.fromMap((map['containerGroupProfile'] as Map).cast<String, dynamic>()),
      containers: pulumi.Input.decodeList<ContainerResponse>(map['containers'], (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: map['diagnostics'] == null ? null : ContainerGroupDiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      dnsConfig: map['dnsConfig'] == null ? null : DnsConfigurationResponse.fromMap((map['dnsConfig'] as Map).cast<String, dynamic>()),
      encryptionProperties: map['encryptionProperties'] == null ? null : EncryptionPropertiesResponse.fromMap((map['encryptionProperties'] as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(map['extensions'], (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ContainerGroupIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Input.decodeList<ImageRegistryCredentialResponse>(map['imageRegistryCredentials'], (value) => ImageRegistryCredentialResponse.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainerDefinitionResponse>(map['initContainers'], (value) => InitContainerDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceView: ContainerGroupPropertiesResponseInstanceView.fromMap((map['instanceView'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] == null ? null : IpAddressResponse.fromMap((map['ipAddress'] as Map).cast<String, dynamic>()),
      isCreatedFromStandbyPool: map['isCreatedFromStandbyPool'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      priority: map['priority'] == null ? null : map['priority'] as String,
      provisioningState: map['provisioningState'] as String,
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      standbyPoolProfile: map['standbyPoolProfile'] == null ? null : StandbyPoolProfileDefinitionResponse.fromMap((map['standbyPoolProfile'] as Map).cast<String, dynamic>()),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Input.decodeList<ContainerGroupSubnetIdResponse>(map['subnetIds'], (value) => ContainerGroupSubnetIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeResponse>(map['volumes'], (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

