// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_artifact_store_args_doc}
/// Arguments for getArtifactStore.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_artifact_store_args_doc}
class GetArtifactStoreArgs {
  /// The name of the artifact store.
  final pulumi.Input<String> artifactStoreName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArtifactStoreArgs].
  /// [artifactStoreName] The name of the artifact store.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetArtifactStoreArgs({
    required this.artifactStoreName,
    required this.publisherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStoreName': artifactStoreName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArtifactStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactStoreArgs(
      artifactStoreName: pulumi.Input.fromValue(map['artifactStoreName'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
