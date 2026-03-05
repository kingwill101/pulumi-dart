// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_properties_format.dart';

/// {@template pulumi_hybridnetwork_artifact_store_args_doc}
/// The set of arguments for ArtifactStore.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_artifact_store_args_doc}
class ArtifactStoreArgs {
  /// The name of the artifact store.
  final pulumi.Input<String>? artifactStoreName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ArtifactStores properties.
  final pulumi.Input<ArtifactStorePropertiesFormat>? properties;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ArtifactStoreArgs].
  /// [artifactStoreName] The name of the artifact store.
  /// [location] The geo-location where the resource lives
  /// [properties] ArtifactStores properties.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ArtifactStoreArgs({
    this.artifactStoreName,
    this.location,
    this.properties,
    required this.publisherName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStoreName': ?artifactStoreName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ArtifactStorePropertiesFormat, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ArtifactStoreArgs.fromMap(Map<String, dynamic> map) {
    return ArtifactStoreArgs(
      artifactStoreName: (() { final guardedValue = map['artifactStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArtifactStorePropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

