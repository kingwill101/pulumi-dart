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
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vscName: (() { final guardedValue = map['vscName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vscType: (() { final guardedValue = map['vscType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

