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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultRouteTableId,
    pulumi.Output<String>? ownerId,
    pulumi.Output<List<String>>? propagatingVgws,
    pulumi.Output<String>? region,
    pulumi.Output<List<DefaultRouteTableRoute>>? routes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultRouteTableId = pulumi.Input.asOptionalInput<String>(defaultRouteTableId),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      propagatingVgws = pulumi.Input.asOptionalInput<List<String>>(propagatingVgws),
      region = pulumi.Input.asOptionalInput<String>(region),
      routes = pulumi.Input.asOptionalInput<List<DefaultRouteTableRoute>>(routes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultRouteTableId: map['defaultRouteTableId'] == null ? null : pulumi.Output.create<String>(map['defaultRouteTableId'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      propagatingVgws: map['propagatingVgws'] == null ? null : pulumi.Output.create<List<String>>((map['propagatingVgws'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<DefaultRouteTableRoute>>(pulumi.Input.decodeList<DefaultRouteTableRoute>(map['routes'], (value) => DefaultRouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

