// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_vsc_vsc_args_doc}
/// The set of arguments for Vsc.
/// {@endtemplate}
/// {@macro pulumi_eflo_vsc_vsc_args_doc}
class VscArgs {
  /// The ID of the Node.
  final pulumi.Input<String> nodeId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the Vsc.
  final pulumi.Input<String>? vscName;
  /// The type of the Vsc. Default value: `primary`. Valid values: `primary`.
  final pulumi.Input<String>? vscType;

  /// Creates a new [VscArgs].
  /// [nodeId] The ID of the Node.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  /// [vscName] The name of the Vsc.
  /// [vscType] The type of the Vsc. Default value: `primary`. Valid values: `primary`.
  VscArgs({
    required this.nodeId,
    this.resourceGroupId,
    this.tags,
    this.vscName,
    this.vscType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeId': nodeId,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'vscName': ?vscName,
      'vscType': ?vscType,
    };
  }

  factory VscArgs.fromMap(Map<String, dynamic> map) {
    return VscArgs(
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vscName: (() { final guardedValue = map['vscName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vscType: (() { final guardedValue = map['vscType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

