// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_eks_cluster_args_doc}
/// Arguments for getEksCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_eks_cluster_args_doc}
class GetEksClusterArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetEksClusterArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetEksClusterArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetEksClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetEksClusterArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

