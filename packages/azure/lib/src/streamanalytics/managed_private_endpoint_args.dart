// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_managed_private_endpoint_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_managed_private_endpoint_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsClusterName;
  /// Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  final pulumi.Input<String> subresourceName;
  /// The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [name] The name which should be used for this Stream Analytics Managed Private Endpoint. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Managed Private Endpoint should exist. Changing this forces a new resource to be created.
  /// [streamAnalyticsClusterName] The name of the Stream Analytics Cluster where the Managed Private Endpoint should be created. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the sub resource name which the Stream Analytics Private Endpoint is able to connect to. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the Private Link Enabled Remote Resource which this Stream Analytics Private endpoint should be connected to. Changing this forces a new resource to be created.
  ManagedPrivateEndpointArgs({
    String? name,
    required String resourceGroupName,
    required String streamAnalyticsClusterName,
    required String subresourceName,
    required String targetResourceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      streamAnalyticsClusterName = pulumi.Input.asInput<String>(streamAnalyticsClusterName),
      subresourceName = pulumi.Input.asInput<String>(subresourceName),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'streamAnalyticsClusterName': streamAnalyticsClusterName,
      'subresourceName': subresourceName,
      'targetResourceId': targetResourceId,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      streamAnalyticsClusterName: map['streamAnalyticsClusterName'] as String,
      subresourceName: map['subresourceName'] as String,
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

