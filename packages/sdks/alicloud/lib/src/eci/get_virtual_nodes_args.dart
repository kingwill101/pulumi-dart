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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNodeName: (() { final guardedValue = map['virtualNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

