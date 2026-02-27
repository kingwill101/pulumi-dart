import 'package:pulumi/pulumi.dart';
import 'health_check_args.dart';

/// Provides a Route53 health check.
///
/// ## Example Usage
///
/// ### Connectivity and HTTP Status Code Check
///
///
///
/// ### Connectivity and String Matching Check
///
///
///
/// ### Aggregate Check
///
///
///
/// ### CloudWatch Alarm Check
///
///
///
/// ### CloudWatch Alarm Check With Triggers
///
/// The `triggers` argument allows the Route53 health check to be synchronized when a change to the upstream CloudWatch alarm is made.
/// In the configuration below, the health check will be synchronized any time the `threshold` of the alarm is changed.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Health Checks using the health check `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/healthCheck:HealthCheck http_check abcdef11-2222-3333-4444-555555fedcba
/// ```
class HealthCheck extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Health Check.
  late final Output<String> arn;

  /// The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive
  late final Output<int?> childHealthThreshold;

  /// For a specified parent health check, a list of HealthCheckId values for the associated child health checks.
  late final Output<List<String>?> childHealthchecks;

  /// The name of the CloudWatch alarm.
  late final Output<String?> cloudwatchAlarmName;

  /// The region that the CloudWatch alarm was created in.
  late final Output<String?> cloudwatchAlarmRegion;

  /// A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:
  /// * For health checks that check the health of endpoints, Route53 stops submitting requests to your application, server, or other resource.
  /// * For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
  /// * For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
  ///
  /// > **Note:** After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of `invert_healthcheck`.
  late final Output<bool?> disabled;

  /// A boolean value that indicates whether Route53 should send the `fqdn` to the endpoint when performing the health check. This defaults to AWS' defaults: when the `type` is "HTTPS" `enable_sni` defaults to `true`, when `type` is anything else `enable_sni` defaults to `false`.
  late final Output<bool> enableSni;

  /// The number of consecutive health checks that an endpoint must pass or fail.
  late final Output<int> failureThreshold;

  /// The fully qualified domain name of the endpoint to be checked. If a value is set for `ip_address`, the value set for `fqdn` will be passed in the `Host` header.
  late final Output<String?> fqdn;

  /// The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are `Healthy` , `Unhealthy` and `LastKnownStatus`.
  late final Output<String?> insufficientDataHealthStatus;

  /// A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy.
  late final Output<bool?> invertHealthcheck;

  /// The IP address of the endpoint to be checked.
  late final Output<String?> ipAddress;

  /// A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console.
  late final Output<bool?> measureLatency;

  /// The port of the endpoint to be checked.
  late final Output<int?> port;

  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single health_check set amongst others)
  late final Output<String?> referenceName;

  /// List of AWS Regions from which Amazon Route 53 health checkers check the specified endpoint. Valid values are `us-east-1`, `us-west-1`, `us-west-2`, `eu-west-1`, `ap-southeast-1`, `ap-southeast-2`, `ap-northeast-1`, and `sa-east-1`. If not specified, all of the regions listed under **Valid values** are used by default. Once this argument is set, removing it has no effect.
  late final Output<List<String>> regions;

  /// The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
  late final Output<int?> requestInterval;

  /// The path that you want Amazon Route 53 to request when performing health checks.
  late final Output<String?> resourcePath;

  /// The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is `RECOVERY_CONTROL`
  late final Output<String?> routingControlArn;

  /// String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with `HTTP_STR_MATCH` and `HTTPS_STR_MATCH`.
  late final Output<String?> searchString;

  /// A map of tags to assign to the health check. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  late final Output<Map<String, String>> triggers;

  /// The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  late final Output<String> type;

  HealthCheck(
    String name, {
    HealthCheckArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/healthCheck:HealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.childHealthThreshold = registerOutput<int?>('childHealthThreshold');
    this.childHealthchecks = registerOutput<List<String>?>('childHealthchecks');
    this.cloudwatchAlarmName = registerOutput<String?>('cloudwatchAlarmName');
    this.cloudwatchAlarmRegion =
        registerOutput<String?>('cloudwatchAlarmRegion');
    this.disabled = registerOutput<bool?>('disabled');
    this.enableSni = registerOutput<bool>('enableSni');
    this.failureThreshold = registerOutput<int>('failureThreshold');
    this.fqdn = registerOutput<String?>('fqdn');
    this.insufficientDataHealthStatus =
        registerOutput<String?>('insufficientDataHealthStatus');
    this.invertHealthcheck = registerOutput<bool?>('invertHealthcheck');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.measureLatency = registerOutput<bool?>('measureLatency');
    this.port = registerOutput<int?>('port');
    this.referenceName = registerOutput<String?>('referenceName');
    this.regions = registerOutput<List<String>>('regions');
    this.requestInterval = registerOutput<int?>('requestInterval');
    this.resourcePath = registerOutput<String?>('resourcePath');
    this.routingControlArn = registerOutput<String?>('routingControlArn');
    this.searchString = registerOutput<String?>('searchString');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.triggers = registerOutput<Map<String, String>>('triggers');
    this.type = registerOutput<String>('type');
  }
}
