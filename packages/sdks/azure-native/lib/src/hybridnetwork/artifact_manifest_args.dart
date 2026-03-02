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
      artifactManifestName: map['artifactManifestName'] == null ? null : (map['artifactManifestName']! as String).input(),
      artifactStoreName: (map['artifactStoreName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ArtifactManifestPropertiesFormat.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      publisherName: (map['publisherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

