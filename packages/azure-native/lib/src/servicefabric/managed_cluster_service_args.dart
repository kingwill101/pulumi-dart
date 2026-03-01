// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_service_properties.dart';

/// {@template pulumi_servicefabric_managed_cluster_service_args_doc}
/// The set of arguments for ManagedClusterService.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_service_args_doc}
class ManagedClusterServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Resource location depends on the parent resource.
  final pulumi.Input<String>? location;
  /// The service resource properties.
  final pulumi.Input<StatefulServiceProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String>? serviceName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedClusterServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] Resource location depends on the parent resource.
  /// [properties] The service resource properties.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  /// [tags] Azure resource tags.
  ManagedClusterServiceArgs({
    required String applicationName,
    required String clusterName,
    String? location,
    StatefulServiceProperties? properties,
    required String resourceGroupName,
    String? serviceName,
    Map<String, String>? tags,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<StatefulServiceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<StatefulServiceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'tags': ?tags,
    };
  }

  factory ManagedClusterServiceArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterServiceArgs(
      applicationName: map['applicationName'] as String,
      clusterName: map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : StatefulServiceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

