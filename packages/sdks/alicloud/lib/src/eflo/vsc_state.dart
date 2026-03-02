// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vsc resources.
class VscState {
  /// The ID of the Node.
  final pulumi.Input<String>? nodeId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the Vsc.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the Vsc.
  final pulumi.Input<String>? vscName;
  /// The type of the Vsc. Default value: `primary`. Valid values: `primary`.
  final pulumi.Input<String>? vscType;

  /// Creates a new [VscState].
  /// [nodeId] The ID of the Node.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the Vsc.
  /// [tags] The tag of the resource.
  /// [vscName] The name of the Vsc.
  /// [vscType] The type of the Vsc. Default value: `primary`. Valid values: `primary`.
  VscState({
    this.nodeId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vscName,
    this.vscType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeId': ?nodeId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vscName': ?vscName,
      'vscType': ?vscType,
    };
  }

  factory VscState.fromMap(Map<String, dynamic> map) {
    return VscState(
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vscName: map['vscName'] == null ? null : (map['vscName']! as String).input(),
      vscType: map['vscType'] == null ? null : (map['vscType']! as String).input(),
    );
  }
}

