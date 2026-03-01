// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_route.dart';

/// Input properties used for looking up and filtering RouteTable resources.
class RouteTableState {
  /// The ARN of the route table.
  final pulumi.Input<String>? arn;
  /// The ID of the AWS account that owns the route table.
  final pulumi.Input<String>? ownerId;
  /// A list of virtual gateways for propagation.
  final pulumi.Input<List<String>>? propagatingVgws;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  final pulumi.Input<List<RouteTableRoute>>? routes;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [RouteTableState].
  /// [arn] The ARN of the route table.
  /// [ownerId] The ID of the AWS account that owns the route table.
  /// [propagatingVgws] A list of virtual gateways for propagation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] A list of route objects. Their keys are documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The VPC ID.
  RouteTableState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<List<String>>? propagatingVgws,
    pulumi.Output<String>? region,
    pulumi.Output<List<RouteTableRoute>>? routes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      propagatingVgws = pulumi.Input.asOptionalInput<List<String>>(propagatingVgws),
      region = pulumi.Input.asOptionalInput<String>(region),
      routes = pulumi.Input.asOptionalInput<List<RouteTableRoute>>(routes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      propagatingVgws: map['propagatingVgws'] == null ? null : pulumi.Output.create<List<String>>((map['propagatingVgws'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<RouteTableRoute>>(pulumi.Input.decodeList<RouteTableRoute>(map['routes'], (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

