// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsEc2NetworkAcl
class AwsEc2NetworkAclProperties {
  /// Property id
  final pulumi.Input<String>? id;
  /// The tags for the network ACL.
  final pulumi.Input<List<Tag>>? tags;
  /// The ID of the VPC for the network ACL.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2NetworkAclProperties].
  /// [id] Property id
  /// [tags] The tags for the network ACL.
  /// [vpcId] The ID of the VPC for the network ACL.
  AwsEc2NetworkAclProperties({
    this.id,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2NetworkAclProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2NetworkAclProperties(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

