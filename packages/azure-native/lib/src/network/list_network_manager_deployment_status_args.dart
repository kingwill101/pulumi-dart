// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_network_manager_deployment_status_args_doc}
/// Arguments for listNetworkManagerDeploymentStatus.
/// {@endtemplate}
/// {@macro pulumi_network_list_network_manager_deployment_status_args_doc}
class ListNetworkManagerDeploymentStatusArgs {
  /// List of deployment types.
  final pulumi.Input<List<String>>? deploymentTypes;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// List of locations.
  final pulumi.Input<List<String>>? regions;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  final pulumi.Input<String>? skipToken;
  /// An optional query parameter which specifies the maximum number of records to be returned by the server.
  final pulumi.Input<int>? top;

  /// Creates a new [ListNetworkManagerDeploymentStatusArgs].
  /// [deploymentTypes] List of deployment types.
  /// [networkManagerName] The name of the network manager.
  /// [regions] List of locations.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] Continuation token for pagination, capturing the next page size and offset, as well as the context of the query.
  /// [top] An optional query parameter which specifies the maximum number of records to be returned by the server.
  ListNetworkManagerDeploymentStatusArgs({
    List<String>? deploymentTypes,
    required String networkManagerName,
    List<String>? regions,
    required String resourceGroupName,
    String? skipToken,
    int? top,
  }) :
      deploymentTypes = pulumi.Input.asOptionalInput<List<String>>(deploymentTypes),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      regions = pulumi.Input.asOptionalInput<List<String>>(regions),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentTypes': ?deploymentTypes,
      'networkManagerName': networkManagerName,
      'regions': ?regions,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
      'top': ?top,
    };
  }

  factory ListNetworkManagerDeploymentStatusArgs.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerDeploymentStatusArgs(
      deploymentTypes: map['deploymentTypes'] == null ? null : (map['deploymentTypes'] as List).cast<String>(),
      networkManagerName: map['networkManagerName'] as String,
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

