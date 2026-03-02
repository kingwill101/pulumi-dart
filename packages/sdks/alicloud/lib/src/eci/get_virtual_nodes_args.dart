// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eci_get_virtual_nodes_get_virtual_nodes_args_doc}
/// Arguments for getVirtualNodes.
/// {@endtemplate}
/// {@macro pulumi_eci_get_virtual_nodes_get_virtual_nodes_args_doc}
class GetVirtualNodesArgs {
  /// A list of Virtual Node IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Virtual Node name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The resource group ID. If when you create a GPU does not specify a resource group instance will automatically add the account's default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// VNode itself and by VNode created (ECI) the security group used by.
  final pulumi.Input<String>? securityGroupId;
  /// The Status of the virtual node. Valid values: `Cleaned`, `Failed`, `Pending`, `Ready`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual node.
  final pulumi.Input<String>? virtualNodeName;
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetVirtualNodesArgs].
  /// [ids] A list of Virtual Node IDs.
  /// [nameRegex] A regex string to filter results by Virtual Node name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The resource group ID. If when you create a GPU does not specify a resource group instance will automatically add the account's default resource group.
  /// [securityGroupId] VNode itself and by VNode created (ECI) the security group used by.
  /// [status] The Status of the virtual node. Valid values: `Cleaned`, `Failed`, `Pending`, `Ready`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNodeName] The name of the virtual node.
  /// [vswitchId] Optional.
  GetVirtualNodesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.securityGroupId,
    this.status,
    this.tags,
    this.virtualNodeName,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'tags': ?tags,
      'virtualNodeName': ?virtualNodeName,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetVirtualNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNodeName: map['virtualNodeName'] == null ? null : (map['virtualNodeName'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

