// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsEc2RouteTable
class AwsEc2RouteTableProperties {
  /// Property routeTableId
  final String? routeTableId;
  /// Any tags assigned to the route table.
  final List<Tag>? tags;
  /// The ID of the VPC.
  final String? vpcId;

  /// Creates a new [AwsEc2RouteTableProperties].
  /// [routeTableId] Property routeTableId
  /// [tags] Any tags assigned to the route table.
  /// [vpcId] The ID of the VPC.
  AwsEc2RouteTableProperties({
    this.routeTableId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeTableId': ?routeTableId,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory AwsEc2RouteTableProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2RouteTableProperties(
      routeTableId: map['routeTableId'] == null ? null : map['routeTableId'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

