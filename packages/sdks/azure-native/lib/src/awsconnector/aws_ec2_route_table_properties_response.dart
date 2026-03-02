// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsEc2RouteTable
class AwsEc2RouteTablePropertiesResponse {
  /// Property routeTableId
  final pulumi.Input<String>? routeTableId;
  /// Any tags assigned to the route table.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [AwsEc2RouteTablePropertiesResponse].
  /// [routeTableId] Property routeTableId
  /// [tags] Any tags assigned to the route table.
  /// [vpcId] The ID of the VPC.
  AwsEc2RouteTablePropertiesResponse({
    this.routeTableId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': ?routeTableId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2RouteTablePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2RouteTablePropertiesResponse(
      routeTableId: map['routeTableId'] == null ? null : (map['routeTableId'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

