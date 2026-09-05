// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_timeouts.dart';

/// Input properties used for looking up and filtering RouteServer resources.
class RouteServerState {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? amazonSideAsn;
  /// The ARN of the route server.
  final pulumi.Input<String?>? arn;
  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  final pulumi.Input<String?>? persistRoutes;
  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persistRoutes` is enabled.
  final pulumi.Input<int?>? persistRoutesDuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The unique identifier of the route server.
  final pulumi.Input<String?>? routeServerId;
  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  final pulumi.Input<bool?>? snsNotificationsEnabled;
  /// The ARN of the SNS topic where notifications are published.
  final pulumi.Input<String?>? snsTopicArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<RouteServerTimeouts?>? timeouts;

  /// Creates a new [RouteServerState].
  /// [amazonSideAsn] The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  /// [arn] The ARN of the route server.
  /// [persistRoutes] Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  /// [persistRoutesDuration] The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persistRoutes` is enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier of the route server.
  /// [snsNotificationsEnabled] Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  /// [snsTopicArn] The ARN of the SNS topic where notifications are published.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const RouteServerState({
    this.amazonSideAsn,
    this.arn,
    this.persistRoutes,
    this.persistRoutesDuration,
    this.region,
    this.routeServerId,
    this.snsNotificationsEnabled,
    this.snsTopicArn,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonSideAsn': ?amazonSideAsn,
      'arn': ?arn,
      'persistRoutes': ?persistRoutes,
      'persistRoutesDuration': ?persistRoutesDuration,
      'region': ?region,
      'routeServerId': ?routeServerId,
      'snsNotificationsEnabled': ?snsNotificationsEnabled,
      'snsTopicArn': ?snsTopicArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RouteServerTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory RouteServerState.fromMap(Map<String, dynamic> map) {
    return RouteServerState(
      amazonSideAsn: (() { final guardedValue = map['amazonSideAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistRoutes: (() { final guardedValue = map['persistRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistRoutesDuration: (() { final guardedValue = map['persistRoutesDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeServerId: (() { final guardedValue = map['routeServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsNotificationsEnabled: (() { final guardedValue = map['snsNotificationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteServerTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
