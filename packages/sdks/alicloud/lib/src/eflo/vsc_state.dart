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
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vscName,
    pulumi.Output<String>? vscType,
  }) :
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vscName = pulumi.Input.asOptionalInput<String>(vscName),
      vscType = pulumi.Input.asOptionalInput<String>(vscType);

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
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vscName: map['vscName'] == null ? null : pulumi.Output.create<String>(map['vscName'] as String),
      vscType: map['vscType'] == null ? null : pulumi.Output.create<String>(map['vscType'] as String),
    );
  }
}

