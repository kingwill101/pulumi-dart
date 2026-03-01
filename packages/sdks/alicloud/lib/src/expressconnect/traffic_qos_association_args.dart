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
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    required pulumi.Output<String> qosId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      qosId = pulumi.Input.asInput<String>(qosId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'qosId': qosId,
    };
  }

  factory TrafficQosAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TrafficQosAssociationArgs(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      qosId: pulumi.Output.create<String>(map['qosId'] as String),
    );
  }
}

