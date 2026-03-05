// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_list_artifact_store_network_fabric_controller_private_end_points_args_doc}
/// Arguments for listArtifactStoreNetworkFabricControllerPrivateEndPoints.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_list_artifact_store_network_fabric_controller_private_end_points_args_doc}
class ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs {
  /// The name of the artifact store.
  final pulumi.Input<String> artifactStoreName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs].
  /// [artifactStoreName] The name of the artifact store.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs({
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

  factory ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs.fromMap(Map<String, dynamic> map) {
    return ListArtifactStoreNetworkFabricControllerPrivateEndPointsArgs(
      artifactStoreName: pulumi.Input.fromValue(map['artifactStoreName'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

