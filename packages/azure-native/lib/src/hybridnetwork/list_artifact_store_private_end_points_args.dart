// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_list_artifact_store_private_end_points_args_doc}
/// Arguments for listArtifactStorePrivateEndPoints.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_list_artifact_store_private_end_points_args_doc}
class ListArtifactStorePrivateEndPointsArgs {
  /// The name of the artifact store.
  final pulumi.Input<String> artifactStoreName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListArtifactStorePrivateEndPointsArgs].
  /// [artifactStoreName] The name of the artifact store.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListArtifactStorePrivateEndPointsArgs({
    required String artifactStoreName,
    required String publisherName,
    required String resourceGroupName,
  }) :
      artifactStoreName = pulumi.Input.asInput<String>(artifactStoreName),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStoreName': artifactStoreName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListArtifactStorePrivateEndPointsArgs.fromMap(Map<String, dynamic> map) {
    return ListArtifactStorePrivateEndPointsArgs(
      artifactStoreName: map['artifactStoreName'] as String,
      publisherName: map['publisherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

