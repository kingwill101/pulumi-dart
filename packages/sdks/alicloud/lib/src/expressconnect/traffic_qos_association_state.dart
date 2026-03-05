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
    this.instanceId,
    this.instanceType,
    this.qosId,
    this.status,
  });

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
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosId: (() { final guardedValue = map['qosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

