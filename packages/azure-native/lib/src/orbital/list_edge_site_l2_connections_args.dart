// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orbital_list_edge_site_l2_connections_args_doc}
/// Arguments for listEdgeSiteL2Connections.
/// {@endtemplate}
/// {@macro pulumi_orbital_list_edge_site_l2_connections_args_doc}
class ListEdgeSiteL2ConnectionsArgs {
  /// Edge site name.
  final pulumi.Input<String> edgeSiteName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListEdgeSiteL2ConnectionsArgs].
  /// [edgeSiteName] Edge site name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListEdgeSiteL2ConnectionsArgs({
    required String edgeSiteName,
    required String resourceGroupName,
  }) :
      edgeSiteName = pulumi.Input.asInput<String>(edgeSiteName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSiteName': edgeSiteName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListEdgeSiteL2ConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListEdgeSiteL2ConnectionsArgs(
      edgeSiteName: map['edgeSiteName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

