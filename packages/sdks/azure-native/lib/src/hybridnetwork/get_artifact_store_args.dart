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
  GetArtifactStoreArgs({
    required pulumi.Output<String> artifactStoreName,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
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

  factory GetArtifactStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactStoreArgs(
      artifactStoreName: pulumi.Output.create<String>(map['artifactStoreName'] as String),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

