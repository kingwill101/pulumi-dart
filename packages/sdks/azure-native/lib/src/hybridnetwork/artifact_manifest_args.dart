// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_manifest_properties_format.dart';

/// {@template pulumi_hybridnetwork_artifact_manifest_args_doc}
/// The set of arguments for ArtifactManifest.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_artifact_manifest_args_doc}
class ArtifactManifestArgs {
  /// The name of the artifact manifest.
  final pulumi.Input<String>? artifactManifestName;
  /// The name of the artifact store.
  final pulumi.Input<String> artifactStoreName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Artifact manifest properties.
  final pulumi.Input<ArtifactManifestPropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ArtifactManifestArgs].
  /// [artifactManifestName] The name of the artifact manifest.
  /// [artifactStoreName] The name of the artifact store.
  /// [location] The geo-location where the resource lives
  /// [properties] Artifact manifest properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ArtifactManifestArgs({
    pulumi.Output<String>? artifactManifestName,
    required pulumi.Output<String> artifactStoreName,
    pulumi.Output<String>? location,
    pulumi.Output<ArtifactManifestPropertiesFormat>? properties,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      artifactManifestName = pulumi.Input.asOptionalInput<String>(artifactManifestName),
      artifactStoreName = pulumi.Input.asInput<String>(artifactStoreName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ArtifactManifestPropertiesFormat>(properties),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactManifestName': ?artifactManifestName,
      'artifactStoreName': artifactStoreName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ArtifactManifestPropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ArtifactManifestArgs.fromMap(Map<String, dynamic> map) {
    return ArtifactManifestArgs(
      artifactManifestName: map['artifactManifestName'] == null ? null : pulumi.Output.create<String>(map['artifactManifestName'] as String),
      artifactStoreName: pulumi.Output.create<String>(map['artifactStoreName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ArtifactManifestPropertiesFormat>(ArtifactManifestPropertiesFormat.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

