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
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (<span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span>) and a Route Table resource with routes defined in-line (<span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span>). At this time you cannot use a <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> inline <span pulumi-lang-nodejs="`route`" pulumi-lang-dotnet="`Route`" pulumi-lang-go="`route`" pulumi-lang-python="`route`" pulumi-lang-yaml="`route`" pulumi-lang-java="`route`">`route`</span> blocks in conjunction with any <span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span> resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  final Input<List<RouteTableRoute>>? routes;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
