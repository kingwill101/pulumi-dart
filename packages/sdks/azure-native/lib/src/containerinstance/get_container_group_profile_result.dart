// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_group_diagnostics_response.dart';
import 'container_response.dart';
import 'deployment_extension_spec_response.dart';
import 'encryption_properties_response.dart';
import 'image_registry_credential_response.dart';
import 'init_container_definition_response.dart';
import 'ip_address_response.dart';
import 'volume_response.dart';

/// Result data returned by getContainerGroupProfile.
class GetContainerGroupProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties for confidential container group
  final ConfidentialComputePropertiesResponse? confidentialComputeProperties;
  /// The containers within the container group.
  final List<ContainerResponse> containers;
  /// The diagnostic information for a container group.
  final ContainerGroupDiagnosticsResponse? diagnostics;
  /// The encryption properties for a container group.
  final EncryptionPropertiesResponse? encryptionProperties;
  /// extensions used by virtual kubelet
  final List<DeploymentExtensionSpecResponse>? extensions;
  /// The resource id.
  final String id;
  /// The image registry credentials by which the container group is created from.
  final List<ImageRegistryCredentialResponse>? imageRegistryCredentials;
  /// The init containers for a container group.
  final List<InitContainerDefinitionResponse>? initContainers;
  /// The IP address type of the container group.
  final IpAddressResponse? ipAddress;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String name;
  /// The operating system type required by the containers in the container group.
  final String osType;
  /// The priority of the container group.
  final String? priority;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  final String? restartPolicy;
  /// The container group profile current revision number. This only appears in the response.
  final int revision;
  /// The SKU for a container group.
  final String? sku;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;
  /// The list of volumes that can be mounted by containers in this container group.
  final List<VolumeResponse>? volumes;
  /// The zones for the container group.
  final List<String>? zones;

  /// Creates a new [GetContainerGroupProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [confidentialComputeProperties] The properties for confidential container group
  /// [containers] The containers within the container group.
  /// [diagnostics] The diagnostic information for a container group.
  /// [encryptionProperties] The encryption properties for a container group.
  /// [extensions] extensions used by virtual kubelet
  /// [id] The resource id.
  /// [imageRegistryCredentials] The image registry credentials by which the container group is created from.
  /// [initContainers] The init containers for a container group.
  /// [ipAddress] The IP address type of the container group.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [osType] The operating system type required by the containers in the container group.
  /// [priority] The priority of the container group.
  /// [restartPolicy] Restart policy for all containers within the container group.
  /// [revision] The container group profile current revision number. This only appears in the response.
  /// [sku] The SKU for a container group.
  /// [tags] The resource tags.
  /// [type] The resource type.
  /// [volumes] The list of volumes that can be mounted by containers in this container group.
  /// [zones] The zones for the container group.
  GetContainerGroupProfileResult({
    required this.azureApiVersion,
    this.confidentialComputeProperties,
    required this.containers,
    this.diagnostics,
    this.encryptionProperties,
    this.extensions,
    required this.id,
    this.imageRegistryCredentials,
    this.initContainers,
    this.ipAddress,
    this.location,
    required this.name,
    required this.osType,
    this.priority,
    this.restartPolicy,
    required this.revision,
    this.sku,
    this.tags,
    required this.type,
    this.volumes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'confidentialComputeProperties': ?confidentialComputeProperties == null ? null : confidentialComputeProperties!.toMap(),
      'containers': pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'encryptionProperties': ?encryptionProperties == null ? null : encryptionProperties!.toMap(),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<DeploymentExtensionSpecResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'id': id,
      'imageRegistryCredentials': ?imageRegistryCredentials == null ? null : pulumi.Input.encodeList<ImageRegistryCredentialResponse, Map<String, dynamic>>(imageRegistryCredentials!, (value) => value.toMap()),
      'initContainers': ?initContainers == null ? null : pulumi.Input.encodeList<InitContainerDefinitionResponse, Map<String, dynamic>>(initContainers!, (value) => value.toMap()),
      'ipAddress': ?ipAddress == null ? null : ipAddress!.toMap(),
      'location': ?location,
      'name': name,
      'osType': osType,
      'priority': ?priority,
      'restartPolicy': ?restartPolicy,
      'revision': revision,
      'sku': ?sku,
      'tags': ?tags,
      'type': type,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory GetContainerGroupProfileResult.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      confidentialComputeProperties: map['confidentialComputeProperties'] == null ? null : ConfidentialComputePropertiesResponse.fromMap((map['confidentialComputeProperties']! as Map).cast<String, dynamic>()),
      containers: pulumi.Input.decodeList<ContainerResponse>(map['containers'], (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: map['diagnostics'] == null ? null : ContainerGroupDiagnosticsResponse.fromMap((map['diagnostics']! as Map).cast<String, dynamic>()),
      encryptionProperties: map['encryptionProperties'] == null ? null : EncryptionPropertiesResponse.fromMap((map['encryptionProperties']! as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(map['extensions']!, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : pulumi.Input.decodeList<ImageRegistryCredentialResponse>(map['imageRegistryCredentials']!, (value) => ImageRegistryCredentialResponse.fromMap((value as Map).cast<String, dynamic>())),
      initContainers: map['initContainers'] == null ? null : pulumi.Input.decodeList<InitContainerDefinitionResponse>(map['initContainers']!, (value) => InitContainerDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipAddress: map['ipAddress'] == null ? null : IpAddressResponse.fromMap((map['ipAddress']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      priority: map['priority'] == null ? null : map['priority']! as String,
      restartPolicy: map['restartPolicy'] == null ? null : map['restartPolicy']! as String,
      revision: map['revision'] as int,
      sku: map['sku'] == null ? null : map['sku']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeResponse>(map['volumes']!, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : (map['zones']! as List).cast<String>(),
    );
  }
}

