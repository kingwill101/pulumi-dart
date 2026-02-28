// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_route.dart';

/// {@template pulumi_ec2_route_table_route_table_args_doc}
/// The set of arguments for RouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2_route_table_route_table_args_doc}
class RouteTableArgs {
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

  /// The VPC ID.
  final pulumi.Input<String> vpcId;

  /// Creates a new [RouteTableArgs].
  /// [propagatingVgws] A list of virtual gateways for propagation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] A list of route objects. Their keys are documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC ID.
  RouteTableArgs({
    List<String>? propagatingVgws,
    String? region,
    List<RouteTableRoute>? routes,
    Map<String, String>? tags,
    required String vpcId,
  })  : propagatingVgws =
            pulumi.Input.asOptionalInput<List<String>>(propagatingVgws),
        region = pulumi.Input.asOptionalInput<String>(region),
        routes = pulumi.Input.asOptionalInput<List<RouteTableRoute>>(routes),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propagatingVgwsValue = propagatingVgws;
    if (propagatingVgwsValue != null) {
      map['propagatingVgws'] = propagatingVgwsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routesValue = routes;
    if (routesValue != null) {
      map['routes'] = pulumi.Input.mapOptionalInputValue<List<RouteTableRoute>,
              List<Map<String, dynamic>>>(
          routesValue,
          (value) =>
              pulumi.Input.encodeList<RouteTableRoute, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableArgs(
      propagatingVgws: map['propagatingVgws'] == null
          ? null
          : (map['propagatingVgws'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      routes: map['routes'] == null
          ? null
          : pulumi.Input.decodeList<RouteTableRoute>(
              map['routes'],
              (value) => RouteTableRoute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
