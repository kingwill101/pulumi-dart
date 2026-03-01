// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scoped_volume.dart';
import 'container_label.dart';
import 'diagnostics_ref.dart';
import 'endpoint_properties.dart';
import 'environment_variable.dart';
import 'image_registry_credential.dart';
import 'reliable_collections_ref.dart';
import 'resource_requirements.dart';
import 'setting.dart';
import 'volume_reference.dart';

/// Describes a container and its runtime properties.
class ContainerCodePackageProperties {
  /// Command array to execute within the container in exec form.
  final List<String>? commands;
  /// Reference to sinks in DiagnosticsDescription.
  final DiagnosticsRef? diagnostics;
  /// The endpoints exposed by this container.
  final List<EndpointProperties>? endpoints;
  /// Override for the default entry point in the container.
  final String? entrypoint;
  /// The environment variables to set in this container
  final List<EnvironmentVariable>? environmentVariables;
  /// The Container image to use.
  final String image;
  /// Image registry credential.
  final ImageRegistryCredential? imageRegistryCredential;
  /// The labels to set in this container.
  final List<ContainerLabel>? labels;
  /// The name of the code package.
  final String name;
  /// A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  final List<ReliableCollectionsRef>? reliableCollectionsRefs;
  /// The resources required by this container.
  final ResourceRequirements resources;
  /// The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  final List<Setting>? settings;
  /// Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  final List<VolumeReference>? volumeRefs;
  /// Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  final List<ApplicationScopedVolume>? volumes;

  /// Creates a new [ContainerCodePackageProperties].
  /// [commands] Command array to execute within the container in exec form.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [endpoints] The endpoints exposed by this container.
  /// [entrypoint] Override for the default entry point in the container.
  /// [environmentVariables] The environment variables to set in this container
  /// [image] The Container image to use.
  /// [imageRegistryCredential] Image registry credential.
  /// [labels] The labels to set in this container.
  /// [name] The name of the code package.
  /// [reliableCollectionsRefs] A list of ReliableCollection resources used by this particular code package. Please refer to ReliableCollectionsRef for more details.
  /// [resources] The resources required by this container.
  /// [settings] The settings to set in this container. The setting file path can be fetched from environment variable "Fabric_SettingPath". The path for Windows container is "C:\\secrets". The path for Linux container is "/var/secrets".
  /// [volumeRefs] Volumes to be attached to the container. The lifetime of these volumes is independent of the application's lifetime.
  /// [volumes] Volumes to be attached to the container. The lifetime of these volumes is scoped to the application's lifetime.
  ContainerCodePackageProperties({
    this.commands,
    this.diagnostics,
    this.endpoints,
    this.entrypoint,
    this.environmentVariables,
    required this.image,
    this.imageRegistryCredential,
    this.labels,
    required this.name,
    this.reliableCollectionsRefs,
    required this.resources,
    this.settings,
    this.volumeRefs,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': ?commands,
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<EndpointProperties, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'entrypoint': ?entrypoint,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'image': image,
      'imageRegistryCredential': ?imageRegistryCredential == null ? null : imageRegistryCredential!.toMap(),
      'labels': ?labels == null ? null : pulumi.Input.encodeList<ContainerLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'name': name,
      'reliableCollectionsRefs': ?reliableCollectionsRefs == null ? null : pulumi.Input.encodeList<ReliableCollectionsRef, Map<String, dynamic>>(reliableCollectionsRefs!, (value) => value.toMap()),
      'resources': resources.toMap(),
      'settings': ?settings == null ? null : pulumi.Input.encodeList<Setting, Map<String, dynamic>>(settings!, (value) => value.toMap()),
      'volumeRefs': ?volumeRefs == null ? null : pulumi.Input.encodeList<VolumeReference, Map<String, dynamic>>(volumeRefs!, (value) => value.toMap()),
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<ApplicationScopedVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory ContainerCodePackageProperties.fromMap(Map<String, dynamic> map) {
    return ContainerCodePackageProperties(
      commands: map['commands'] == null ? null : (map['commands'] as List).cast<String>(),
      diagnostics: map['diagnostics'] == null ? null : DiagnosticsRef.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<EndpointProperties>(map['endpoints'], (value) => EndpointProperties.fromMap((value as Map).cast<String, dynamic>())),
      entrypoint: map['entrypoint'] == null ? null : map['entrypoint'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvironmentVariable>(map['environmentVariables'], (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] as String,
      imageRegistryCredential: map['imageRegistryCredential'] == null ? null : ImageRegistryCredential.fromMap((map['imageRegistryCredential'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<ContainerLabel>(map['labels'], (value) => ContainerLabel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      reliableCollectionsRefs: map['reliableCollectionsRefs'] == null ? null : pulumi.Input.decodeList<ReliableCollectionsRef>(map['reliableCollectionsRefs'], (value) => ReliableCollectionsRef.fromMap((value as Map).cast<String, dynamic>())),
      resources: ResourceRequirements.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null ? null : pulumi.Input.decodeList<Setting>(map['settings'], (value) => Setting.fromMap((value as Map).cast<String, dynamic>())),
      volumeRefs: map['volumeRefs'] == null ? null : pulumi.Input.decodeList<VolumeReference>(map['volumeRefs'], (value) => VolumeReference.fromMap((value as Map).cast<String, dynamic>())),
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<ApplicationScopedVolume>(map['volumes'], (value) => ApplicationScopedVolume.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

