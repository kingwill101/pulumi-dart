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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNodeName,
    pulumi.Output<String>? vswitchId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNodeName = pulumi.Input.asOptionalInput<String>(virtualNodeName),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNodeName: map['virtualNodeName'] == null ? null : pulumi.Output.create<String>(map['virtualNodeName'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

