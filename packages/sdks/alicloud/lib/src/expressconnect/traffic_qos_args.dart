// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_traffic_qos_traffic_qos_args_doc}
/// The set of arguments for TrafficQos.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_traffic_qos_traffic_qos_args_doc}
class TrafficQosArgs {
  /// The description of the QoS policy.
  /// The length is `0` to `256` characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? qosDescription;
  /// The name of the QoS policy.
  /// The length is `0` to `128` characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? qosName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrafficQosArgs].
  /// [qosDescription] The description of the QoS policy.
  /// [qosName] The name of the QoS policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  const TrafficQosArgs({
    this.qosDescription,
    this.qosName,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qosDescription': ?qosDescription,
      'qosName': ?qosName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory TrafficQosArgs.fromMap(Map<String, dynamic> map) {
    return TrafficQosArgs(
      qosDescription: (() { final guardedValue = map['qosDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosName: (() { final guardedValue = map['qosName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

