import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_server_timeouts/route_server_timeouts.dart';
import 'route_server_args.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Persist Route and SNS Notification
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server using the `route_server_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServer:RouteServer example rs-12345678
/// ```
class RouteServer extends pulumi.CustomResource {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> amazonSideAsn;

  /// The ARN of the route server.
  late final pulumi.Output<String> arn;

  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  late final pulumi.Output<String> persistRoutes;

  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  late final pulumi.Output<int?> persistRoutesDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The unique identifier of the route server.
  late final pulumi.Output<String> routeServerId;

  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  late final pulumi.Output<bool> snsNotificationsEnabled;

  /// The ARN of the SNS topic where notifications are published.
  late final pulumi.Output<String> snsTopicArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RouteServerTimeouts?> timeouts;

  RouteServer(
    String name, {
    RouteServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServer:RouteServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<int>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.persistRoutes = registerOutput<String>('persistRoutes');
    this.persistRoutesDuration = registerOutput<int?>('persistRoutesDuration');
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.snsNotificationsEnabled =
        registerOutput<bool>('snsNotificationsEnabled');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerTimeouts?>('timeouts');
  }
}
