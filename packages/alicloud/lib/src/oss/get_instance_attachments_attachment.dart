// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceAttachmentsAttachment {
  /// The domain of the instance attachment.
  final String domain;
  /// The access endpoint of the instance attachment.
  final String endpoint;
  /// The resource ID, the value is same as "instance_name".
  final String id;
  /// The name of OTS instance.
  final String instanceName;
  /// The region of the instance attachment.
  final String region;
  /// The ID of attaching VPC to instance.
  final String vpcId;
  /// The name of attaching VPC to instance.
  final String vpcName;

  /// Creates a new [GetInstanceAttachmentsAttachment].
  /// [domain] The domain of the instance attachment.
  /// [endpoint] The access endpoint of the instance attachment.
  /// [id] The resource ID, the value is same as "instance_name".
  /// [instanceName] The name of OTS instance.
  /// [region] The region of the instance attachment.
  /// [vpcId] The ID of attaching VPC to instance.
  /// [vpcName] The name of attaching VPC to instance.
  GetInstanceAttachmentsAttachment({
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
      domain: map['domain'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      instanceName: map['instanceName'] as String,
      region: map['region'] as String,
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}

