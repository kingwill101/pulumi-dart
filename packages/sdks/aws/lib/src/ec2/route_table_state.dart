// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_route.dart';

/// Input properties used for looking up and filtering RouteTable resources.
class RouteTableState {
  /// The ARN of the route table.
  final pulumi.Input<String?>? arn;
  /// The ID of the AWS account that owns the route table.
  final pulumi.Input<String?>? ownerId;
  /// A list of virtual gateways for propagation.
  final pulumi.Input<List<String>?>? propagatingVgws;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// &gt; **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  final pulumi.Input<List<RouteTableRoute>?>? routes;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The VPC ID.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [RouteTableState].
  /// [arn] The ARN of the route table.
  /// [ownerId] The ID of the AWS account that owns the route table.
  /// [propagatingVgws] A list of virtual gateways for propagation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] A list of route objects. Their keys are documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] The VPC ID.
  const RouteTableState({
    this.arn,
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
      'ownerId': ?ownerId,
      'propagatingVgws': ?propagatingVgws,
      'region': ?region,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory RouteTableState.fromMap(Map<String, dynamic> map) {
    return RouteTableState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propagatingVgws: (() { final guardedValue = map['propagatingVgws']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteTableRoute>(guardedValue, (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
