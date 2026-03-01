// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_managed_cluster_application_type_args_doc}
/// The set of arguments for ManagedClusterApplicationType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_application_type_args_doc}
class ManagedClusterApplicationTypeArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String>? applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Resource location depends on the parent resource.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedClusterApplicationTypeArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] Resource location depends on the parent resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Azure resource tags.
  ManagedClusterApplicationTypeArgs({
    String? applicationTypeName,
    required String clusterName,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationTypeName = pulumi.Input.asOptionalInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': ?applicationTypeName,
      'clusterName': clusterName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ManagedClusterApplicationTypeArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterApplicationTypeArgs(
      applicationTypeName: map['applicationTypeName'] == null ? null : map['applicationTypeName'] as String,
      clusterName: map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

