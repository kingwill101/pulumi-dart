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
  const ArtifactManifestArgs({
    this.artifactManifestName,
    required this.artifactStoreName,
    this.location,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

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
      artifactManifestName: (() { final guardedValue = map['artifactManifestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactStoreName: pulumi.Input.fromValue(map['artifactStoreName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArtifactManifestPropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

