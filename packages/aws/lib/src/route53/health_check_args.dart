// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_health_check_health_check_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_route53_health_check_health_check_args_doc}
class HealthCheckArgs {
  /// The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive
  final pulumi.Input<int>? childHealthThreshold;

  /// For a specified parent health check, a list of HealthCheckId values for the associated child health checks.
  final pulumi.Input<List<String>>? childHealthchecks;

  /// The name of the CloudWatch alarm.
  final pulumi.Input<String>? cloudwatchAlarmName;

  /// The region that the CloudWatch alarm was created in.
  final pulumi.Input<String>? cloudwatchAlarmRegion;

  /// A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:
  /// * For health checks that check the health of endpoints, Route53 stops submitting requests to your application, server, or other resource.
  /// * For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
  /// * For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
  ///
  /// > **Note:** After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of `invert_healthcheck`.
  final pulumi.Input<bool>? disabled;

  /// A boolean value that indicates whether Route53 should send the `fqdn` to the endpoint when performing the health check. This defaults to AWS' defaults: when the `type` is "HTTPS" `enable_sni` defaults to `true`, when `type` is anything else `enable_sni` defaults to `false`.
  final pulumi.Input<bool>? enableSni;

  /// The number of consecutive health checks that an endpoint must pass or fail.
  final pulumi.Input<int>? failureThreshold;

  /// The fully qualified domain name of the endpoint to be checked. If a value is set for `ip_address`, the value set for `fqdn` will be passed in the `Host` header.
  final pulumi.Input<String>? fqdn;

  /// The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are `Healthy` , `Unhealthy` and `LastKnownStatus`.
  final pulumi.Input<String>? insufficientDataHealthStatus;

  /// A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy.
  final pulumi.Input<bool>? invertHealthcheck;

  /// The IP address of the endpoint to be checked.
  final pulumi.Input<String>? ipAddress;

  /// A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console.
  final pulumi.Input<bool>? measureLatency;

  /// The port of the endpoint to be checked.
  final pulumi.Input<int>? port;

  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single health_check set amongst others)
  final pulumi.Input<String>? referenceName;

  /// List of AWS Regions from which Amazon Route 53 health checkers check the specified endpoint. Valid values are `us-east-1`, `us-west-1`, `us-west-2`, `eu-west-1`, `ap-southeast-1`, `ap-southeast-2`, `ap-northeast-1`, and `sa-east-1`. If not specified, all of the regions listed under **Valid values** are used by default. Once this argument is set, removing it has no effect.
  final pulumi.Input<List<String>>? regions;

  /// The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
  final pulumi.Input<int>? requestInterval;

  /// The path that you want Amazon Route 53 to request when performing health checks.
  final pulumi.Input<String>? resourcePath;

  /// The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is `RECOVERY_CONTROL`
  final pulumi.Input<String>? routingControlArn;

  /// String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with `HTTP_STR_MATCH` and `HTTPS_STR_MATCH`.
  final pulumi.Input<String>? searchString;

  /// A map of tags to assign to the health check. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  final pulumi.Input<Map<String, String>>? triggers;

  /// The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  final pulumi.Input<String> type;

  /// Creates a new [HealthCheckArgs].
  /// [childHealthThreshold] The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive
  /// [childHealthchecks] For a specified parent health check, a list of HealthCheckId values for the associated child health checks.
  /// [cloudwatchAlarmName] The name of the CloudWatch alarm.
  /// [cloudwatchAlarmRegion] The region that the CloudWatch alarm was created in.
  /// [disabled] A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:
  /// [enableSni] A boolean value that indicates whether Route53 should send the `fqdn` to the endpoint when performing the health check. This defaults to AWS' defaults: when the `type` is "HTTPS" `enable_sni` defaults to `true`, when `type` is anything else `enable_sni` defaults to `false`.
  /// [failureThreshold] The number of consecutive health checks that an endpoint must pass or fail.
  /// [fqdn] The fully qualified domain name of the endpoint to be checked. If a value is set for `ip_address`, the value set for `fqdn` will be passed in the `Host` header.
  /// [insufficientDataHealthStatus] The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are `Healthy` , `Unhealthy` and `LastKnownStatus`.
  /// [invertHealthcheck] A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy.
  /// [ipAddress] The IP address of the endpoint to be checked.
  /// [measureLatency] A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console.
  /// [port] The port of the endpoint to be checked.
  /// [referenceName] This is a reference name used in Caller Reference
  /// [regions] List of AWS Regions from which Amazon Route 53 health checkers check the specified endpoint. Valid values are `us-east-1`, `us-west-1`, `us-west-2`, `eu-west-1`, `ap-southeast-1`, `ap-southeast-2`, `ap-northeast-1`, and `sa-east-1`. If not specified, all of the regions listed under **Valid values** are used by default. Once this argument is set, removing it has no effect.
  /// [requestInterval] The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
  /// [resourcePath] The path that you want Amazon Route 53 to request when performing health checks.
  /// [routingControlArn] The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is `RECOVERY_CONTROL`
  /// [searchString] String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with `HTTP_STR_MATCH` and `HTTPS_STR_MATCH`.
  /// [tags] A map of tags to assign to the health check. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  /// [type] The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  HealthCheckArgs({
    int? childHealthThreshold,
    List<String>? childHealthchecks,
    String? cloudwatchAlarmName,
    String? cloudwatchAlarmRegion,
    bool? disabled,
    bool? enableSni,
    int? failureThreshold,
    String? fqdn,
    String? insufficientDataHealthStatus,
    bool? invertHealthcheck,
    String? ipAddress,
    bool? measureLatency,
    int? port,
    String? referenceName,
    List<String>? regions,
    int? requestInterval,
    String? resourcePath,
    String? routingControlArn,
    String? searchString,
    Map<String, String>? tags,
    Map<String, String>? triggers,
    required String type,
  }) : childHealthThreshold = pulumi.Input.asOptionalInput<int>(
         childHealthThreshold,
       ),
       childHealthchecks = pulumi.Input.asOptionalInput<List<String>>(
         childHealthchecks,
       ),
       cloudwatchAlarmName = pulumi.Input.asOptionalInput<String>(
         cloudwatchAlarmName,
       ),
       cloudwatchAlarmRegion = pulumi.Input.asOptionalInput<String>(
         cloudwatchAlarmRegion,
       ),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       enableSni = pulumi.Input.asOptionalInput<bool>(enableSni),
       failureThreshold = pulumi.Input.asOptionalInput<int>(failureThreshold),
       fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
       insufficientDataHealthStatus = pulumi.Input.asOptionalInput<String>(
         insufficientDataHealthStatus,
       ),
       invertHealthcheck = pulumi.Input.asOptionalInput<bool>(
         invertHealthcheck,
       ),
       ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
       measureLatency = pulumi.Input.asOptionalInput<bool>(measureLatency),
       port = pulumi.Input.asOptionalInput<int>(port),
       referenceName = pulumi.Input.asOptionalInput<String>(referenceName),
       regions = pulumi.Input.asOptionalInput<List<String>>(regions),
       requestInterval = pulumi.Input.asOptionalInput<int>(requestInterval),
       resourcePath = pulumi.Input.asOptionalInput<String>(resourcePath),
       routingControlArn = pulumi.Input.asOptionalInput<String>(
         routingControlArn,
       ),
       searchString = pulumi.Input.asOptionalInput<String>(searchString),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
       type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childHealthThreshold': ?childHealthThreshold,
      'childHealthchecks': ?childHealthchecks,
      'cloudwatchAlarmName': ?cloudwatchAlarmName,
      'cloudwatchAlarmRegion': ?cloudwatchAlarmRegion,
      'disabled': ?disabled,
      'enableSni': ?enableSni,
      'failureThreshold': ?failureThreshold,
      'fqdn': ?fqdn,
      'insufficientDataHealthStatus': ?insufficientDataHealthStatus,
      'invertHealthcheck': ?invertHealthcheck,
      'ipAddress': ?ipAddress,
      'measureLatency': ?measureLatency,
      'port': ?port,
      'referenceName': ?referenceName,
      'regions': ?regions,
      'requestInterval': ?requestInterval,
      'resourcePath': ?resourcePath,
      'routingControlArn': ?routingControlArn,
      'searchString': ?searchString,
      'tags': ?tags,
      'triggers': ?triggers,
      'type': type,
    };
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      childHealthThreshold: map['childHealthThreshold'] == null
          ? null
          : map['childHealthThreshold'] as int,
      childHealthchecks: map['childHealthchecks'] == null
          ? null
          : (map['childHealthchecks'] as List).cast<String>(),
      cloudwatchAlarmName: map['cloudwatchAlarmName'] == null
          ? null
          : map['cloudwatchAlarmName'] as String,
      cloudwatchAlarmRegion: map['cloudwatchAlarmRegion'] == null
          ? null
          : map['cloudwatchAlarmRegion'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      enableSni: map['enableSni'] == null ? null : map['enableSni'] as bool,
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      insufficientDataHealthStatus: map['insufficientDataHealthStatus'] == null
          ? null
          : map['insufficientDataHealthStatus'] as String,
      invertHealthcheck: map['invertHealthcheck'] == null
          ? null
          : map['invertHealthcheck'] as bool,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      measureLatency: map['measureLatency'] == null
          ? null
          : map['measureLatency'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
      referenceName: map['referenceName'] == null
          ? null
          : map['referenceName'] as String,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      requestInterval: map['requestInterval'] == null
          ? null
          : map['requestInterval'] as int,
      resourcePath: map['resourcePath'] == null
          ? null
          : map['resourcePath'] as String,
      routingControlArn: map['routingControlArn'] == null
          ? null
          : map['routingControlArn'] as String,
      searchString: map['searchString'] == null
          ? null
          : map['searchString'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      triggers: map['triggers'] == null
          ? null
          : (map['triggers'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
