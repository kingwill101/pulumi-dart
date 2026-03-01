// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_timeouts.dart';

/// Input properties used for looking up and filtering RouteServer resources.
class RouteServerState {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? amazonSideAsn;
  /// The ARN of the route server.
  final pulumi.Input<String>? arn;
  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  final pulumi.Input<String>? persistRoutes;
  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  final pulumi.Input<int>? persistRoutesDuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier of the route server.
  final pulumi.Input<String>? routeServerId;
  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  final pulumi.Input<bool>? snsNotificationsEnabled;
  /// The ARN of the SNS topic where notifications are published.
  final pulumi.Input<String>? snsTopicArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<RouteServerTimeouts>? timeouts;

  /// Creates a new [RouteServerState].
  /// [amazonSideAsn] The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  /// [arn] The ARN of the route server.
  /// [persistRoutes] Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  /// [persistRoutesDuration] The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeServerId] The unique identifier of the route server.
  /// [snsNotificationsEnabled] Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  /// [snsTopicArn] The ARN of the SNS topic where notifications are published.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  RouteServerState({
    pulumi.Output<int>? amazonSideAsn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? persistRoutes,
    pulumi.Output<int>? persistRoutesDuration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeServerId,
    pulumi.Output<bool>? snsNotificationsEnabled,
    pulumi.Output<String>? snsTopicArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<RouteServerTimeouts>? timeouts,
  }) :
      amazonSideAsn = pulumi.Input.asOptionalInput<int>(amazonSideAsn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      persistRoutes = pulumi.Input.asOptionalInput<String>(persistRoutes),
      persistRoutesDuration = pulumi.Input.asOptionalInput<int>(persistRoutesDuration),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeServerId = pulumi.Input.asOptionalInput<String>(routeServerId),
      snsNotificationsEnabled = pulumi.Input.asOptionalInput<bool>(snsNotificationsEnabled),
      snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<RouteServerTimeouts>(timeouts);

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
      amazonSideAsn: map['amazonSideAsn'] == null ? null : pulumi.Output.create<int>(map['amazonSideAsn'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      persistRoutes: map['persistRoutes'] == null ? null : pulumi.Output.create<String>(map['persistRoutes'] as String),
      persistRoutesDuration: map['persistRoutesDuration'] == null ? null : pulumi.Output.create<int>(map['persistRoutesDuration'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeServerId: map['routeServerId'] == null ? null : pulumi.Output.create<String>(map['routeServerId'] as String),
      snsNotificationsEnabled: map['snsNotificationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['snsNotificationsEnabled'] as bool),
      snsTopicArn: map['snsTopicArn'] == null ? null : pulumi.Output.create<String>(map['snsTopicArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RouteServerTimeouts>(RouteServerTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

