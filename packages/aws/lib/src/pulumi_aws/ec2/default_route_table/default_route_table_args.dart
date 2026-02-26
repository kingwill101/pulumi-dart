// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_route_table_route/default_route_table_route.dart';

/// The set of arguments for DefaultRouteTable.
class DefaultRouteTableArgs {
  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  final Input<String> defaultRouteTableId;

  /// List of virtual gateways for propagation.
  final Input<List<String>>? propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of objects. Detailed below
  final Input<List<DefaultRouteTableRoute>>? routes;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['routes'] = Input.mapOptionalInputValue<List<DefaultRouteTableRoute>,
              List<Map<String, dynamic>>>(
          routesValue,
          (value) =>
              Input.encodeList<DefaultRouteTableRoute, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DefaultRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableArgs(
      defaultRouteTableId: Input.asInput<String>(map['defaultRouteTableId']),
      propagatingVgws:
          Input.asOptionalInput<List<String>>(map['propagatingVgws']),
      region: Input.asOptionalInput<String>(map['region']),
      routes:
          Input.asOptionalInput<List<DefaultRouteTableRoute>>(map['routes']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
