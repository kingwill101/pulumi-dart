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
import 'security_context_definition_response.dart';
import 'system_data_response.dart';
import 'volume_response.dart';

/// Result data returned by getCGProfile.
class GetCGProfileResult {
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
  /// Registered revisions are calculated at request time based off the records in the table logs.
  final List<int> registeredRevisions;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  final String? restartPolicy;
  /// Container group profile current revision number
  final int revision;
  /// The container security properties.
  final SecurityContextDefinitionResponse? securityContext;
  /// Shutdown grace period for containers in a container group.
  final String? shutdownGracePeriod;
  /// The SKU for a container group.
  final String? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Post completion time to live for containers of a CG
  final String? timeToLive;
  /// The resource type.
  final String type;
  /// Gets or sets Krypton use property.
  final bool? useKrypton;
  /// The list of volumes that can be mounted by containers in this container group.
  final List<VolumeResponse>? volumes;
  /// The zones for the container group.
  final List<String>? zones;

  /// Creates a new [GetCGProfileResult].
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
  /// [registeredRevisions] Registered revisions are calculated at request time based off the records in the table logs.
  /// [restartPolicy] Restart policy for all containers within the container group.
  /// [revision] Container group profile current revision number
  /// [securityContext] The container security properties.
  /// [shutdownGracePeriod] Shutdown grace period for containers in a container group.
  /// [sku] The SKU for a container group.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The resource tags.
  /// [timeToLive] Post completion time to live for containers of a CG
  /// [type] The resource type.
  /// [useKrypton] Gets or sets Krypton use property.
  /// [volumes] The list of volumes that can be mounted by containers in this container group.
  /// [zones] The zones for the container group.
  const GetCGProfileResult({
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
    required this.registeredRevisions,
    this.restartPolicy,
    required this.revision,
    this.securityContext,
    this.shutdownGracePeriod,
    this.sku,
    required this.systemData,
    this.tags,
    this.timeToLive,
    required this.type,
    this.useKrypton,
    this.volumes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'confidentialComputeProperties': ?confidentialComputeProperties?.toMap(),
      'containers': pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'diagnostics': ?diagnostics?.toMap(),
      'encryptionProperties': ?encryptionProperties?.toMap(),
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeploymentExtensionSpecResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'imageRegistryCredentials': ?(() { final guardedValue = imageRegistryCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageRegistryCredentialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'initContainers': ?(() { final guardedValue = initContainers; if (guardedValue == null) return null; return pulumi.Input.encodeList<InitContainerDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipAddress': ?ipAddress?.toMap(),
      'location': ?location,
      'name': name,
      'osType': osType,
      'priority': ?priority,
      'registeredRevisions': registeredRevisions,
      'restartPolicy': ?restartPolicy,
      'revision': revision,
      'securityContext': ?securityContext?.toMap(),
      'shutdownGracePeriod': ?shutdownGracePeriod,
      'sku': ?sku,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timeToLive': ?timeToLive,
      'type': type,
      'useKrypton': ?useKrypton,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zones': ?zones,
    };
  }

  factory GetCGProfileResult.fromMap(Map<String, dynamic> map) {
    return GetCGProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      confidentialComputeProperties: (() { final guardedValue = map['confidentialComputeProperties']; if (guardedValue == null) return null; return ConfidentialComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      containers: pulumi.Input.decodeList<ContainerResponse>(map['containers']!, (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return ContainerGroupDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionProperties: (() { final guardedValue = map['encryptionProperties']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(guardedValue, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      imageRegistryCredentials: (() { final guardedValue = map['imageRegistryCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageRegistryCredentialResponse>(guardedValue, (value) => ImageRegistryCredentialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      initContainers: (() { final guardedValue = map['initContainers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InitContainerDefinitionResponse>(guardedValue, (value) => InitContainerDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return IpAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      osType: map['osType'] as String,
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registeredRevisions: (map['registeredRevisions'] as List).cast<int>(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revision: map['revision'] as int,
      securityContext: (() { final guardedValue = map['securityContext']; if (guardedValue == null) return null; return SecurityContextDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      shutdownGracePeriod: (() { final guardedValue = map['shutdownGracePeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      useKrypton: (() { final guardedValue = map['useKrypton']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeResponse>(guardedValue, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
