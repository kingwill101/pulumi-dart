// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_cluster_instance_hybrid_identity_metadatum_args_doc}
/// Arguments for getClusterInstanceHybridIdentityMetadatum.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_cluster_instance_hybrid_identity_metadatum_args_doc}
class GetClusterInstanceHybridIdentityMetadatumArgs {
  /// The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  final pulumi.Input<String> connectedClusterResourceUri;

  /// Creates a new [GetClusterInstanceHybridIdentityMetadatumArgs].
  /// [connectedClusterResourceUri] The fully qualified Azure Resource Manager identifier of the connected cluster resource.
  const GetClusterInstanceHybridIdentityMetadatumArgs({
    required this.connectedClusterResourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedClusterResourceUri': connectedClusterResourceUri,
    };
  }

  factory GetClusterInstanceHybridIdentityMetadatumArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterInstanceHybridIdentityMetadatumArgs(
      connectedClusterResourceUri: pulumi.Input.fromValue(map['connectedClusterResourceUri'] as String),
    );
  }
}
