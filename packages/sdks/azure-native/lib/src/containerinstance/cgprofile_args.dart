// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties.dart';
import 'container.dart';
import 'container_group_diagnostics.dart';
import 'deployment_extension_spec.dart';
import 'encryption_properties.dart';
import 'image_registry_credential.dart';
import 'init_container_definition.dart';
import 'ip_address.dart';
import 'security_context_definition.dart';
import 'volume.dart';

/// {@template pulumi_containerinstance_cgprofile_args_doc}
/// The set of arguments for CGProfile.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_cgprofile_args_doc}
class CGProfileArgs {
  /// The properties for confidential container group
  final pulumi.Input<ConfidentialComputeProperties>? confidentialComputeProperties;
  /// ContainerGroupProfile name.
  final pulumi.Input<String>? containerGroupProfileName;
  /// The containers within the container group.
  final pulumi.Input<List<Container>> containers;
  /// The diagnostic information for a container group.
  final pulumi.Input<ContainerGroupDiagnostics>? diagnostics;
  /// The encryption properties for a container group.
  final pulumi.Input<EncryptionProperties>? encryptionProperties;
  /// extensions used by virtual kubelet
  final pulumi.Input<List<DeploymentExtensionSpec>>? extensions;
  /// The image registry credentials by which the container group is created from.
  final pulumi.Input<List<ImageRegistryCredential>>? imageRegistryCredentials;
  /// The init containers for a container group.
  final pulumi.Input<List<InitContainerDefinition>>? initContainers;
  /// The IP address type of the container group.
  final pulumi.Input<IpAddress>? ipAddress;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The operating system type required by the containers in the container group.
  final pulumi.Input<String> osType;
  /// The priority of the container group.
  final pulumi.Input<String>? priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  final pulumi.Input<String>? restartPolicy;
  /// The container security properties.
  final pulumi.Input<SecurityContextDefinition>? securityContext;
  /// Shutdown grace period for containers in a container group.
  final pulumi.Input<String>? shutdownGracePeriod;
  /// The SKU for a container group.
  final pulumi.Input<String>? sku;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Post completion time to live for containers of a CG
  final pulumi.Input<String>? timeToLive;
  /// Gets or sets Krypton use property.
  final pulumi.Input<bool>? useKrypton;
  /// The list of volumes that can be mounted by containers in this container group.
  final pulumi.Input<List<Volume>>? volumes;
  /// The zones for the container group.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CGProfileArgs].
  /// [confidentialComputeProperties] The properties for confidential container group
  /// [containerGroupProfileName] ContainerGroupProfile name.
  /// [containers] The containers within the container group.
  /// [diagnostics] The diagnostic information for a container group.
  /// [encryptionProperties] The encryption properties for a container group.
  /// [extensions] extensions used by virtual kubelet
  /// [imageRegistryCredentials] The image registry credentials by which the container group is created from.
  /// [initContainers] The init containers for a container group.
  /// [ipAddress] The IP address type of the container group.
  /// [location] The resource location.
  /// [osType] The operating system type required by the containers in the container group.
  /// [priority] The priority of the container group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restartPolicy] Restart policy for all containers within the container group.
  /// [securityContext] The container security properties.
  /// [shutdownGracePeriod] Shutdown grace period for containers in a container group.
  /// [sku] The SKU for a container group.
  /// [tags] The resource tags.
  /// [timeToLive] Post completion time to live for containers of a CG
  /// [useKrypton] Gets or sets Krypton use property.
  /// [volumes] The list of volumes that can be mounted by containers in this container group.
  /// [zones] The zones for the container group.
  CGProfileArgs({
    this.confidentialComputeProperties,
    this.containerGroupProfileName,
    required this.containers,
    this.diagnostics,
    this.encryptionProperties,
    this.extensions,
    this.imageRegistryCredentials,
    this.initContainers,
    this.ipAddress,
    this.location,
    required this.osType,
    this.priority,
    required this.resourceGroupName,
    this.restartPolicy,
    this.securityContext,
    this.shutdownGracePeriod,
    this.sku,
    this.tags,
    this.timeToLive,
    this.useKrypton,
    this.volumes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialComputeProperties': ?pulumi.Input.mapOptionalInputValue<ConfidentialComputeProperties, Map<String, dynamic>>(confidentialComputeProperties, (value) => value.toMap()),
      'containerGroupProfileName': ?containerGroupProfileName,
      'containers': pulumi.Input.mapInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<ContainerGroupDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'encryptionProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryptionProperties, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<DeploymentExtensionSpec>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<DeploymentExtensionSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<ImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<ImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainerDefinition>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?pulumi.Input.mapOptionalInputValue<IpAddress, Map<String, dynamic>>(ipAddress, (value) => value.toMap()),
      'location': ?location,
      'osType': osType,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'restartPolicy': ?restartPolicy,
      'securityContext': ?pulumi.Input.mapOptionalInputValue<SecurityContextDefinition, Map<String, dynamic>>(securityContext, (value) => value.toMap()),
      'shutdownGracePeriod': ?shutdownGracePeriod,
      'sku': ?sku,
      'tags': ?tags,
      'timeToLive': ?timeToLive,
      'useKrypton': ?useKrypton,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory CGProfileArgs.fromMap(Map<String, dynamic> map) {
    return CGProfileArgs(
      confidentialComputeProperties: map['confidentialComputeProperties'] == null ? null : (ConfidentialComputeProperties.fromMap((map['confidentialComputeProperties']! as Map).cast<String, dynamic>())).input(),
      containerGroupProfileName: map['containerGroupProfileName'] == null ? null : (map['containerGroupProfileName']! as String).input(),
      containers: (pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diagnostics: map['diagnostics'] == null ? null : (ContainerGroupDiagnostics.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      encryptionProperties: map['encryptionProperties'] == null ? null : (EncryptionProperties.fromMap((map['encryptionProperties']! as Map).cast<String, dynamic>())).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<DeploymentExtensionSpec>(map['extensions']!, (value) => DeploymentExtensionSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : (pulumi.Input.decodeList<ImageRegistryCredential>(map['imageRegistryCredentials']!, (value) => ImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: map['initContainers'] == null ? null : (pulumi.Input.decodeList<InitContainerDefinition>(map['initContainers']!, (value) => InitContainerDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: map['ipAddress'] == null ? null : (IpAddress.fromMap((map['ipAddress']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      osType: (map['osType'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (map['restartPolicy']! as String).input(),
      securityContext: map['securityContext'] == null ? null : (SecurityContextDefinition.fromMap((map['securityContext']! as Map).cast<String, dynamic>())).input(),
      shutdownGracePeriod: map['shutdownGracePeriod'] == null ? null : (map['shutdownGracePeriod']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeToLive: map['timeToLive'] == null ? null : (map['timeToLive']! as String).input(),
      useKrypton: map['useKrypton'] == null ? null : (map['useKrypton']! as bool).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<Volume>(map['volumes']!, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

