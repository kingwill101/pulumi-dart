// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties.dart';
import 'container.dart';
import 'container_group_diagnostics.dart';
import 'container_group_identity.dart';
import 'container_group_profile_reference_definition.dart';
import 'container_group_subnet_id.dart';
import 'deployment_extension_spec.dart';
import 'dns_configuration.dart';
import 'encryption_properties.dart';
import 'image_registry_credential.dart';
import 'init_container_definition.dart';
import 'ip_address.dart';
import 'standby_pool_profile_definition.dart';
import 'volume.dart';

/// {@template pulumi_containerinstance_container_group_args_doc}
/// The set of arguments for ContainerGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_container_group_args_doc}
class ContainerGroupArgs {
  /// The properties for confidential container group
  final pulumi.Input<ConfidentialComputeProperties>? confidentialComputeProperties;
  /// The name of the container group.
  final pulumi.Input<String>? containerGroupName;
  /// The reference container group profile properties.
  final pulumi.Input<ContainerGroupProfileReferenceDefinition>? containerGroupProfile;
  /// The containers within the container group.
  final pulumi.Input<List<Container>> containers;
  /// The diagnostic information for a container group.
  final pulumi.Input<ContainerGroupDiagnostics>? diagnostics;
  /// The DNS config information for a container group.
  final pulumi.Input<DnsConfiguration>? dnsConfig;
  /// The encryption properties for a container group.
  final pulumi.Input<EncryptionProperties>? encryptionProperties;
  /// extensions used by virtual kubelet
  final pulumi.Input<List<DeploymentExtensionSpec>>? extensions;
  /// The identity of the container group, if configured.
  final pulumi.Input<ContainerGroupIdentity>? identity;
  /// The image registry credentials by which the container group is created from.
  final pulumi.Input<List<ImageRegistryCredential>>? imageRegistryCredentials;
  /// The init containers for a container group.
  final pulumi.Input<List<InitContainerDefinition>>? initContainers;
  /// The IP address type of the container group.
  final pulumi.Input<IpAddress>? ipAddress;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The operating system type required by the containers in the container group.
  final pulumi.Input<String>? osType;
  /// The priority of the container group.
  final pulumi.Input<String>? priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  final pulumi.Input<String>? restartPolicy;
  /// The SKU for a container group.
  final pulumi.Input<String>? sku;
  /// The reference standby pool profile properties.
  final pulumi.Input<StandbyPoolProfileDefinition>? standbyPoolProfile;
  /// The subnet resource IDs for a container group.
  final pulumi.Input<List<ContainerGroupSubnetId>>? subnetIds;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The list of volumes that can be mounted by containers in this container group.
  final pulumi.Input<List<Volume>>? volumes;
  /// The zones for the container group.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ContainerGroupArgs].
  /// [confidentialComputeProperties] The properties for confidential container group
  /// [containerGroupName] The name of the container group.
  /// [containerGroupProfile] The reference container group profile properties.
  /// [containers] The containers within the container group.
  /// [diagnostics] The diagnostic information for a container group.
  /// [dnsConfig] The DNS config information for a container group.
  /// [encryptionProperties] The encryption properties for a container group.
  /// [extensions] extensions used by virtual kubelet
  /// [identity] The identity of the container group, if configured.
  /// [imageRegistryCredentials] The image registry credentials by which the container group is created from.
  /// [initContainers] The init containers for a container group.
  /// [ipAddress] The IP address type of the container group.
  /// [location] The resource location.
  /// [osType] The operating system type required by the containers in the container group.
  /// [priority] The priority of the container group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restartPolicy] Restart policy for all containers within the container group.
  /// [sku] The SKU for a container group.
  /// [standbyPoolProfile] The reference standby pool profile properties.
  /// [subnetIds] The subnet resource IDs for a container group.
  /// [tags] The resource tags.
  /// [volumes] The list of volumes that can be mounted by containers in this container group.
  /// [zones] The zones for the container group.
  ContainerGroupArgs({
    this.confidentialComputeProperties,
    this.containerGroupName,
    this.containerGroupProfile,
    required this.containers,
    this.diagnostics,
    this.dnsConfig,
    this.encryptionProperties,
    this.extensions,
    this.identity,
    this.imageRegistryCredentials,
    this.initContainers,
    this.ipAddress,
    this.location,
    this.osType,
    this.priority,
    required this.resourceGroupName,
    this.restartPolicy,
    this.sku,
    this.standbyPoolProfile,
    this.subnetIds,
    this.tags,
    this.volumes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialComputeProperties': ?pulumi.Input.mapOptionalInputValue<ConfidentialComputeProperties, Map<String, dynamic>>(confidentialComputeProperties, (value) => value.toMap()),
      'containerGroupName': ?containerGroupName,
      'containerGroupProfile': ?pulumi.Input.mapOptionalInputValue<ContainerGroupProfileReferenceDefinition, Map<String, dynamic>>(containerGroupProfile, (value) => value.toMap()),
      'containers': pulumi.Input.mapInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<ContainerGroupDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'dnsConfig': ?pulumi.Input.mapOptionalInputValue<DnsConfiguration, Map<String, dynamic>>(dnsConfig, (value) => value.toMap()),
      'encryptionProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryptionProperties, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<DeploymentExtensionSpec>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<DeploymentExtensionSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<ContainerGroupIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageRegistryCredentials': ?pulumi.Input.mapOptionalInputValue<List<ImageRegistryCredential>, List<Map<String, dynamic>>>(imageRegistryCredentials, (value) => pulumi.Input.encodeList<ImageRegistryCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<InitContainerDefinition>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<InitContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?pulumi.Input.mapOptionalInputValue<IpAddress, Map<String, dynamic>>(ipAddress, (value) => value.toMap()),
      'location': ?location,
      'osType': ?osType,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'restartPolicy': ?restartPolicy,
      'sku': ?sku,
      'standbyPoolProfile': ?pulumi.Input.mapOptionalInputValue<StandbyPoolProfileDefinition, Map<String, dynamic>>(standbyPoolProfile, (value) => value.toMap()),
      'subnetIds': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupSubnetId>, List<Map<String, dynamic>>>(subnetIds, (value) => pulumi.Input.encodeList<ContainerGroupSubnetId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory ContainerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ContainerGroupArgs(
      confidentialComputeProperties: map['confidentialComputeProperties'] == null ? null : (ConfidentialComputeProperties.fromMap((map['confidentialComputeProperties']! as Map).cast<String, dynamic>())).input(),
      containerGroupName: map['containerGroupName'] == null ? null : (map['containerGroupName']! as String).input(),
      containerGroupProfile: map['containerGroupProfile'] == null ? null : (ContainerGroupProfileReferenceDefinition.fromMap((map['containerGroupProfile']! as Map).cast<String, dynamic>())).input(),
      containers: (pulumi.Input.decodeList<Container>(map['containers'], (value) => Container.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diagnostics: map['diagnostics'] == null ? null : (ContainerGroupDiagnostics.fromMap((map['diagnostics']! as Map).cast<String, dynamic>())).input(),
      dnsConfig: map['dnsConfig'] == null ? null : (DnsConfiguration.fromMap((map['dnsConfig']! as Map).cast<String, dynamic>())).input(),
      encryptionProperties: map['encryptionProperties'] == null ? null : (EncryptionProperties.fromMap((map['encryptionProperties']! as Map).cast<String, dynamic>())).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<DeploymentExtensionSpec>(map['extensions']!, (value) => DeploymentExtensionSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (ContainerGroupIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      imageRegistryCredentials: map['imageRegistryCredentials'] == null ? null : (pulumi.Input.decodeList<ImageRegistryCredential>(map['imageRegistryCredentials']!, (value) => ImageRegistryCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: map['initContainers'] == null ? null : (pulumi.Input.decodeList<InitContainerDefinition>(map['initContainers']!, (value) => InitContainerDefinition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: map['ipAddress'] == null ? null : (IpAddress.fromMap((map['ipAddress']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restartPolicy: map['restartPolicy'] == null ? null : (map['restartPolicy']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      standbyPoolProfile: map['standbyPoolProfile'] == null ? null : (StandbyPoolProfileDefinition.fromMap((map['standbyPoolProfile']! as Map).cast<String, dynamic>())).input(),
      subnetIds: map['subnetIds'] == null ? null : (pulumi.Input.decodeList<ContainerGroupSubnetId>(map['subnetIds']!, (value) => ContainerGroupSubnetId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<Volume>(map['volumes']!, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

