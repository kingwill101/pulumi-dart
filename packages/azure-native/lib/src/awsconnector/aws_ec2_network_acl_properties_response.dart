// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsEc2NetworkAcl
class AwsEc2NetworkAclPropertiesResponse {
  /// Property id
  final String? id;
  /// The tags for the network ACL.
  final List<TagResponse>? tags;
  /// The ID of the VPC for the network ACL.
  final String? vpcId;

  /// Creates a new [AwsEc2NetworkAclPropertiesResponse].
  /// [id] Property id
  /// [tags] The tags for the network ACL.
  /// [vpcId] The ID of the VPC for the network ACL.
  AwsEc2NetworkAclPropertiesResponse({
    this.id,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2NetworkAclPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2NetworkAclPropertiesResponse(
      id: map['id'] == null ? null : map['id'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

