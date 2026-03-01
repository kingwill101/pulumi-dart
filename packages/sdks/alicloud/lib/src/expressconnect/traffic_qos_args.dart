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
  TrafficQosArgs({
    pulumi.Output<String>? qosDescription,
    pulumi.Output<String>? qosName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      qosDescription = pulumi.Input.asOptionalInput<String>(qosDescription),
      qosName = pulumi.Input.asOptionalInput<String>(qosName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      qosDescription: map['qosDescription'] == null ? null : pulumi.Output.create<String>(map['qosDescription'] as String),
      qosName: map['qosName'] == null ? null : pulumi.Output.create<String>(map['qosName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

