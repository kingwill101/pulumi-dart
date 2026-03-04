// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_route_table_route.dart';

/// {@template pulumi_ec2_default_route_table_default_route_table_args_doc}
/// The set of arguments for DefaultRouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_route_table_default_route_table_args_doc}
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

  /// Creates a new [DefaultRouteTableArgs].
  /// [defaultRouteTableId] ID of the default route table.
  /// [propagatingVgws] List of virtual gateways for propagation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] Set of objects. Detailed below
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DefaultRouteTableArgs({
    required this.defaultRouteTableId,
    this.propagatingVgws,
    this.region,
    this.routes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultRouteTableId': defaultRouteTableId,
      'propagatingVgws': ?propagatingVgws,
      'region': ?region,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            List<DefaultRouteTableRoute>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<
                  DefaultRouteTableRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
    };
  }

  factory DefaultRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableArgs(
      defaultRouteTableId: pulumi.Input.fromValue(
        map['defaultRouteTableId'] as String,
      ),
      propagatingVgws: (() {
        final guardedValue = map['propagatingVgws'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DefaultRouteTableRoute>(
            guardedValue,
            (value) => DefaultRouteTableRoute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
