// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_timeouts.dart';

/// {@template pulumi_vpc_route_server_route_server_args_doc}
/// The set of arguments for RouteServer.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_server_route_server_args_doc}
class RouteServerArgs {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> amazonSideAsn;

  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  final pulumi.Input<String>? persistRoutes;

  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  final pulumi.Input<int>? persistRoutesDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  final pulumi.Input<bool>? snsNotificationsEnabled;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<RouteServerTimeouts>? timeouts;

  /// Creates a new [RouteServerArgs].
  /// [amazonSideAsn] The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  /// [persistRoutes] Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  /// [persistRoutesDuration] The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snsNotificationsEnabled] Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  RouteServerArgs({
    required this.amazonSideAsn,
    this.persistRoutes,
    this.persistRoutesDuration,
    this.region,
    this.snsNotificationsEnabled,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': amazonSideAsn,
      'persistRoutes': ?persistRoutes,
      'persistRoutesDuration': ?persistRoutesDuration,
      'region': ?region,
      'snsNotificationsEnabled': ?snsNotificationsEnabled,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            RouteServerTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory RouteServerArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerArgs(
      amazonSideAsn: pulumi.Input.fromValue(map['amazonSideAsn'] as int),
      persistRoutes: (() {
        final guardedValue = map['persistRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      persistRoutesDuration: (() {
        final guardedValue = map['persistRoutesDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snsNotificationsEnabled: (() {
        final guardedValue = map['snsNotificationsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouteServerTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
