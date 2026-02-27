// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_table_route/route_table_route.dart';

/// The set of arguments for RouteTable.
class RouteTableArgs {
  /// A list of virtual gateways for propagation.
  final Input<List<String>>? propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  final Input<List<RouteTableRoute>>? routes;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VPC ID.
  final Input<String> vpcId;

  RouteTableArgs({
    this.propagatingVgws,
    this.region,
    this.routes,
    this.tags,
    required this.vpcId,
  });

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
      map['routes'] = Input.mapOptionalInputValue<List<RouteTableRoute>,
              List<Map<String, dynamic>>>(
          routesValue,
          (value) => Input.encodeList<RouteTableRoute, Map<String, dynamic>>(
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
      propagatingVgws:
          Input.asOptionalInput<List<String>>(map['propagatingVgws']),
      region: Input.asOptionalInput<String>(map['region']),
      routes: Input.asOptionalInput<List<RouteTableRoute>>(map['routes']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
