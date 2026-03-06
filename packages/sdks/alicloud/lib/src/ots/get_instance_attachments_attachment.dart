// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAttachmentsAttachment {
  /// The domain of the instance attachment.
  final pulumi.Input<String> domain;
  /// The access endpoint of the instance attachment.
  final pulumi.Input<String> endpoint;
  /// The resource ID, the value is same as "instance_name".
  final pulumi.Input<String> id;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// The region of the instance attachment.
  final pulumi.Input<String> region;
  /// The ID of attaching VPC to instance.
  final pulumi.Input<String> vpcId;
  /// The name of attaching VPC to instance.
  final pulumi.Input<String> vpcName;

  /// Creates a new [GetInstanceAttachmentsAttachment].
  /// [domain] The domain of the instance attachment.
  /// [endpoint] The access endpoint of the instance attachment.
  /// [id] The resource ID, the value is same as "instance_name".
  /// [instanceName] The name of OTS instance.
  /// [region] The region of the instance attachment.
  /// [vpcId] The ID of attaching VPC to instance.
  /// [vpcName] The name of attaching VPC to instance.
  const GetInstanceAttachmentsAttachment({
    required this.domain,
    required this.endpoint,
    required this.id,
    required this.instanceName,
    required this.region,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'endpoint': endpoint,
      'id': id,
      'instanceName': instanceName,
      'region': region,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetInstanceAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsAttachment(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}

