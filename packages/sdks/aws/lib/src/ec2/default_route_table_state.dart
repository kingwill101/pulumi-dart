// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_route.dart';

/// Input properties used for looking up and filtering DefaultRouteTable resources.
class DefaultRouteTableState {
  /// The ARN of the route table.
  final pulumi.Input<String>? arn;
  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? defaultRouteTableId;
  /// ID of the AWS account that owns the route table.
  final pulumi.Input<String>? ownerId;
  /// List of virtual gateways for propagation.
  final pulumi.Input<List<String>>? propagatingVgws;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of objects. Detailed below
  final pulumi.Input<List<DefaultRouteTableRoute>>? routes;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DefaultRouteTableState].
  /// [arn] The ARN of the route table.
  /// [defaultRouteTableId] ID of the default route table.
  /// [ownerId] ID of the AWS account that owns the route table.
  /// [propagatingVgws] List of virtual gateways for propagation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] Set of objects. Detailed below
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] ID of the VPC.
  DefaultRouteTableState({
    this.arn,
    this.defaultRouteTableId,
    this.ownerId,
    this.propagatingVgws,
    this.region,
    this.routes,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultRouteTableId': ?defaultRouteTableId,
      'ownerId': ?ownerId,
      'propagatingVgws': ?propagatingVgws,
      'region': ?region,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<DefaultRouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<DefaultRouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory DefaultRouteTableState.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      defaultRouteTableId: map['defaultRouteTableId'] == null ? null : (map['defaultRouteTableId'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      propagatingVgws: map['propagatingVgws'] == null ? null : ((map['propagatingVgws'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<DefaultRouteTableRoute>(map['routes'], (value) => DefaultRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

