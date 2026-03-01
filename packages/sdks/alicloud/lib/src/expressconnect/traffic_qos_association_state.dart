// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficQosAssociation resources.
class TrafficQosAssociationState {
  /// The ID of the associated instance.
  final pulumi.Input<String>? instanceId;
  /// The type of the associated instance. Value: **physical connection** physical connection.
  final pulumi.Input<String>? instanceType;
  /// The QoS policy ID.
  final pulumi.Input<String>? qosId;
  /// The status of the associated instance. Value:
  final pulumi.Input<String>? status;

  /// Creates a new [TrafficQosAssociationState].
  /// [instanceId] The ID of the associated instance.
  /// [instanceType] The type of the associated instance. Value: **physical connection** physical connection.
  /// [qosId] The QoS policy ID.
  /// [status] The status of the associated instance. Value:
  TrafficQosAssociationState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? qosId,
    pulumi.Output<String>? status,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      qosId = pulumi.Input.asOptionalInput<String>(qosId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'qosId': ?qosId,
      'status': ?status,
    };
  }

  factory TrafficQosAssociationState.fromMap(Map<String, dynamic> map) {
    return TrafficQosAssociationState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      qosId: map['qosId'] == null ? null : pulumi.Output.create<String>(map['qosId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

