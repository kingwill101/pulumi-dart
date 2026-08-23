// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_container_group_profile_response.dart';
import 'container_group_diagnostics_response.dart';
import 'deployment_extension_spec_response.dart';
import 'encryption_properties_response.dart';
import 'image_registry_credential_container_group_profile_response.dart';
import 'init_container_definition_container_group_profile_response.dart';
import 'ip_address_response.dart';
import 'volume_container_group_profile_response.dart';

/// Result data returned by getContainerGroupProfile.
class GetContainerGroupProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The properties for confidential container group
  final ConfidentialComputePropertiesResponse? confidentialComputeProperties;
  /// The containers within the container group.
  final List<ContainerContainerGroupProfileResponse> containers;
  /// The diagnostic information for a container group.
  final ContainerGroupDiagnosticsResponse? diagnostics;
  /// The encryption properties for a container group.
  final EncryptionPropertiesResponse? encryptionProperties;
  /// extensions used by virtual kubelet
  final List<DeploymentExtensionSpecResponse>? extensions;
  /// The resource id.
  final String id;
  /// The image registry credentials by which the container group is created from.
  final List<ImageRegistryCredentialContainerGroupProfileResponse>? imageRegistryCredentials;
  /// The init containers for a container group.
  final List<InitContainerDefinitionContainerGroupProfileResponse>? initContainers;
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
  final List<VolumeContainerGroupProfileResponse>? volumes;
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
  const GetContainerGroupProfileResult({
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
      'confidentialComputeProperties': ?confidentialComputeProperties?.toMap(),
      'containers': pulumi.Input.encodeList<ContainerContainerGroupProfileResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'diagnostics': ?diagnostics?.toMap(),
      'encryptionProperties': ?encryptionProperties?.toMap(),
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeploymentExtensionSpecResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'imageRegistryCredentials': ?(() { final guardedValue = imageRegistryCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageRegistryCredentialContainerGroupProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'initContainers': ?(() { final guardedValue = initContainers; if (guardedValue == null) return null; return pulumi.Input.encodeList<InitContainerDefinitionContainerGroupProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipAddress': ?ipAddress?.toMap(),
      'location': ?location,
      'name': name,
      'osType': osType,
      'priority': ?priority,
      'restartPolicy': ?restartPolicy,
      'revision': revision,
      'sku': ?sku,
      'tags': ?tags,
      'type': type,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeContainerGroupProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetContainerGroupProfileResult.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      confidentialComputeProperties: (() { final guardedValue = map['confidentialComputeProperties']; if (guardedValue == null) return null; return ConfidentialComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      containers: pulumi.Input.decodeList<ContainerContainerGroupProfileResponse>(map['containers']!, (value) => ContainerContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return ContainerGroupDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionProperties: (() { final guardedValue = map['encryptionProperties']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(guardedValue, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageRegistryCredentialContainerGroupProfileResponse>(guardedValue, (value) => ImageRegistryCredentialContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InitContainerDefinitionContainerGroupProfileResponse>(guardedValue, (value) => InitContainerDefinitionContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return IpAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      osType: map['osType'] as String,
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: map['revision'] as int,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeContainerGroupProfileResponse>(guardedValue, (value) => VolumeContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
