// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../route_server_timeouts/route_server_timeouts.dart';

/// The set of arguments for RouteServer.
class RouteServerArgs {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  final Input<int> amazonSideAsn;

  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>, <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`reset`" pulumi-lang-dotnet="`Reset`" pulumi-lang-go="`reset`" pulumi-lang-python="`reset`" pulumi-lang-yaml="`reset`" pulumi-lang-java="`reset`">`reset`</span>
  final Input<String>? persistRoutes;

  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if <span pulumi-lang-nodejs="`persistRoutes`" pulumi-lang-dotnet="`PersistRoutes`" pulumi-lang-go="`persistRoutes`" pulumi-lang-python="`persist_routes`" pulumi-lang-yaml="`persistRoutes`" pulumi-lang-java="`persistRoutes`">`persist_routes`</span> is enabled.
  final Input<int>? persistRoutesDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  final Input<bool>? snsNotificationsEnabled;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<RouteServerTimeouts>? timeouts;

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
    final map = <String, dynamic>{};
    map['amazonSideAsn'] = amazonSideAsn;
    final persistRoutesValue = persistRoutes;
    if (persistRoutesValue != null) {
      map['persistRoutes'] = persistRoutesValue;
    }
    final persistRoutesDurationValue = persistRoutesDuration;
    if (persistRoutesDurationValue != null) {
      map['persistRoutesDuration'] = persistRoutesDurationValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snsNotificationsEnabledValue = snsNotificationsEnabled;
    if (snsNotificationsEnabledValue != null) {
      map['snsNotificationsEnabled'] = snsNotificationsEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<RouteServerTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RouteServerArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerArgs(
      amazonSideAsn: Input.asInput<int>(map['amazonSideAsn']),
      persistRoutes: Input.asOptionalInput<String>(map['persistRoutes']),
      persistRoutesDuration:
          Input.asOptionalInput<int>(map['persistRoutesDuration']),
      region: Input.asOptionalInput<String>(map['region']),
      snsNotificationsEnabled:
          Input.asOptionalInput<bool>(map['snsNotificationsEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<RouteServerTimeouts>(map['timeouts']),
    );
  }
}
