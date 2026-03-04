// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_traffic_qos_association_traffic_qos_association_args_doc}
/// The set of arguments for TrafficQosAssociation.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_traffic_qos_association_traffic_qos_association_args_doc}
class TrafficQosAssociationArgs {
  /// The ID of the associated instance.
  final pulumi.Input<String>? instanceId;

  /// The type of the associated instance. Value: **physical connection** physical connection.
  final pulumi.Input<String>? instanceType;

  /// The QoS policy ID.
  final pulumi.Input<String> qosId;

  /// Creates a new [TrafficQosAssociationArgs].
  /// [instanceId] The ID of the associated instance.
  /// [instanceType] The type of the associated instance. Value: **physical connection** physical connection.
  /// [qosId] The QoS policy ID.
  TrafficQosAssociationArgs({
    this.instanceId,
    this.instanceType,
    required this.qosId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'qosId': qosId,
    };
  }

  factory TrafficQosAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrafficQosAssociationArgs(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      qosId: pulumi.Input.fromValue(map['qosId'] as String),
    );
  }
}
