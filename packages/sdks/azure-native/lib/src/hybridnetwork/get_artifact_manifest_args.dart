// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridnetwork_get_artifact_manifest_args_doc}
/// Arguments for getArtifactManifest.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_get_artifact_manifest_args_doc}
class GetArtifactManifestArgs {
  /// The name of the artifact manifest.
  final pulumi.Input<String> artifactManifestName;
  /// The name of the artifact store.
  final pulumi.Input<String> artifactStoreName;
  /// The name of the publisher.
  final pulumi.Input<String> publisherName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArtifactManifestArgs].
  /// [artifactManifestName] The name of the artifact manifest.
  /// [artifactStoreName] The name of the artifact store.
  /// [publisherName] The name of the publisher.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetArtifactManifestArgs({
    required pulumi.Output<String> artifactManifestName,
    required pulumi.Output<String> artifactStoreName,
    required pulumi.Output<String> publisherName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      artifactManifestName = pulumi.Input.asInput<String>(artifactManifestName),
      artifactStoreName = pulumi.Input.asInput<String>(artifactStoreName),
      publisherName = pulumi.Input.asInput<String>(publisherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactManifestName': artifactManifestName,
      'artifactStoreName': artifactStoreName,
      'publisherName': publisherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArtifactManifestArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactManifestArgs(
      artifactManifestName: pulumi.Output.create<String>(map['artifactManifestName'] as String),
      artifactStoreName: pulumi.Output.create<String>(map['artifactStoreName'] as String),
      publisherName: pulumi.Output.create<String>(map['publisherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

