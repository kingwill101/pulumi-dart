// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The first ID of the resource
  final pulumi.Input<String>? instanceId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceState].
  /// [createTime] The creation time of the resource
  /// [instanceId] The first ID of the resource
  /// [status] The status of the resource
  InstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

