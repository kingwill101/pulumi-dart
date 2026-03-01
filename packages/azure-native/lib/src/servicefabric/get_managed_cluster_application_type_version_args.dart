// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_type_version_args_doc}
/// Arguments for getManagedClusterApplicationTypeVersion.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_type_version_args_doc}
class GetManagedClusterApplicationTypeVersionArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The application type version.
  final pulumi.Input<String> version;

  /// Creates a new [GetManagedClusterApplicationTypeVersionArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  /// [version] The application type version.
  GetManagedClusterApplicationTypeVersionArgs({
    required String applicationTypeName,
    required String clusterName,
    required String resourceGroupName,
    required String version,
  }) :
      applicationTypeName = pulumi.Input.asInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetManagedClusterApplicationTypeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationTypeVersionArgs(
      applicationTypeName: map['applicationTypeName'] as String,
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
    );
  }
}

