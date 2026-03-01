// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eks_cluster_properties.dart';

/// {@template pulumi_awsconnector_eks_cluster_args_doc}
/// The set of arguments for EksCluster.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_eks_cluster_args_doc}
class EksClusterArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<EksClusterProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [EksClusterArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  EksClusterArgs({
    EksClusterProperties? properties,
    required String resourceUri,
  }) :
      properties = pulumi.Input.asOptionalInput<EksClusterProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<EksClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory EksClusterArgs.fromMap(Map<String, dynamic> map) {
    return EksClusterArgs(
      properties: map['properties'] == null ? null : EksClusterProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceUri: map['resourceUri'] as String,
    );
  }
}

