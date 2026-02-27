// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_route_table_route/default_route_table_route.dart';

/// The set of arguments for DefaultRouteTable.
class DefaultRouteTableArgs {
  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> defaultRouteTableId;

  /// List of virtual gateways for propagation.
  final pulumi.Input<List<String>>? propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Set of objects. Detailed below
  final pulumi.Input<List<DefaultRouteTableRoute>>? routes;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DefaultRouteTableArgs({
    required this.defaultRouteTableId,
    this.propagatingVgws,
    this.region,
    this.routes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRouteTableId'] = defaultRouteTableId;
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
      map['routes'] = pulumi.Input.mapOptionalInputValue<
              List<DefaultRouteTableRoute>, List<Map<String, dynamic>>>(
          routesValue,
          (value) => pulumi.Input.encodeList<DefaultRouteTableRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DefaultRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableArgs(
      defaultRouteTableId:
          pulumi.Input.asInput<String>(map['defaultRouteTableId']),
      propagatingVgws:
          pulumi.Input.asOptionalInput<List<String>>(map['propagatingVgws']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routes: pulumi.Input.asOptionalInput<List<DefaultRouteTableRoute>>(
          map['routes']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
