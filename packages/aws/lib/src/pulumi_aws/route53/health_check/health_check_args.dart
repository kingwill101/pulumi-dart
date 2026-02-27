// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HealthCheck.
class HealthCheckArgs {
  /// The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive
  final Input<int>? childHealthThreshold;

  /// For a specified parent health check, a list of HealthCheckId values for the associated child health checks.
  final Input<List<String>>? childHealthchecks;

  /// The name of the CloudWatch alarm.
  final Input<String>? cloudwatchAlarmName;

  /// The region that the CloudWatch alarm was created in.
  final Input<String>? cloudwatchAlarmRegion;

  /// A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:
  /// * For health checks that check the health of endpoints, Route53 stops submitting requests to your application, server, or other resource.
  /// * For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
  /// * For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
  ///
  /// > **Note:** After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of `invert_healthcheck`.
  final Input<bool>? disabled;

  /// A boolean value that indicates whether Route53 should send the `fqdn` to the endpoint when performing the health check. This defaults to AWS' defaults: when the `type` is "HTTPS" `enable_sni` defaults to `true`, when `type` is anything else `enable_sni` defaults to `false`.
  final Input<bool>? enableSni;

  /// The number of consecutive health checks that an endpoint must pass or fail.
  final Input<int>? failureThreshold;

  /// The fully qualified domain name of the endpoint to be checked. If a value is set for `ip_address`, the value set for `fqdn` will be passed in the `Host` header.
  final Input<String>? fqdn;

  /// The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are `Healthy` , `Unhealthy` and `LastKnownStatus`.
  final Input<String>? insufficientDataHealthStatus;

  /// A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy.
  final Input<bool>? invertHealthcheck;

  /// The IP address of the endpoint to be checked.
  final Input<String>? ipAddress;

  /// A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console.
  final Input<bool>? measureLatency;

  /// The port of the endpoint to be checked.
  final Input<int>? port;

  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single health_check set amongst others)
  final Input<String>? referenceName;

  /// List of AWS Regions from which Amazon Route 53 health checkers check the specified endpoint. Valid values are `us-east-1`, `us-west-1`, `us-west-2`, `eu-west-1`, `ap-southeast-1`, `ap-southeast-2`, `ap-northeast-1`, and `sa-east-1`. If not specified, all of the regions listed under **Valid values** are used by default. Once this argument is set, removing it has no effect.
  final Input<List<String>>? regions;

  /// The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
  final Input<int>? requestInterval;

  /// The path that you want Amazon Route 53 to request when performing health checks.
  final Input<String>? resourcePath;

  /// The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is `RECOVERY_CONTROL`
  final Input<String>? routingControlArn;

  /// String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with `HTTP_STR_MATCH` and `HTTPS_STR_MATCH`.
  final Input<String>? searchString;

  /// A map of tags to assign to the health check. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  final Input<Map<String, String>>? triggers;

  /// The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  final Input<String> type;

  HealthCheckArgs({
    this.childHealthThreshold,
    this.childHealthchecks,
    this.cloudwatchAlarmName,
    this.cloudwatchAlarmRegion,
    this.disabled,
    this.enableSni,
    this.failureThreshold,
    this.fqdn,
    this.insufficientDataHealthStatus,
    this.invertHealthcheck,
    this.ipAddress,
    this.measureLatency,
    this.port,
    this.referenceName,
    this.regions,
    this.requestInterval,
    this.resourcePath,
    this.routingControlArn,
    this.searchString,
    this.tags,
    this.triggers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final childHealthThresholdValue = childHealthThreshold;
    if (childHealthThresholdValue != null) {
      map['childHealthThreshold'] = childHealthThresholdValue;
    }
    final childHealthchecksValue = childHealthchecks;
    if (childHealthchecksValue != null) {
      map['childHealthchecks'] = childHealthchecksValue;
    }
    final cloudwatchAlarmNameValue = cloudwatchAlarmName;
    if (cloudwatchAlarmNameValue != null) {
      map['cloudwatchAlarmName'] = cloudwatchAlarmNameValue;
    }
    final cloudwatchAlarmRegionValue = cloudwatchAlarmRegion;
    if (cloudwatchAlarmRegionValue != null) {
      map['cloudwatchAlarmRegion'] = cloudwatchAlarmRegionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final enableSniValue = enableSni;
    if (enableSniValue != null) {
      map['enableSni'] = enableSniValue;
    }
    final failureThresholdValue = failureThreshold;
    if (failureThresholdValue != null) {
      map['failureThreshold'] = failureThresholdValue;
    }
    final fqdnValue = fqdn;
    if (fqdnValue != null) {
      map['fqdn'] = fqdnValue;
    }
    final insufficientDataHealthStatusValue = insufficientDataHealthStatus;
    if (insufficientDataHealthStatusValue != null) {
      map['insufficientDataHealthStatus'] = insufficientDataHealthStatusValue;
    }
    final invertHealthcheckValue = invertHealthcheck;
    if (invertHealthcheckValue != null) {
      map['invertHealthcheck'] = invertHealthcheckValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final measureLatencyValue = measureLatency;
    if (measureLatencyValue != null) {
      map['measureLatency'] = measureLatencyValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final referenceNameValue = referenceName;
    if (referenceNameValue != null) {
      map['referenceName'] = referenceNameValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    final requestIntervalValue = requestInterval;
    if (requestIntervalValue != null) {
      map['requestInterval'] = requestIntervalValue;
    }
    final resourcePathValue = resourcePath;
    if (resourcePathValue != null) {
      map['resourcePath'] = resourcePathValue;
    }
    final routingControlArnValue = routingControlArn;
    if (routingControlArnValue != null) {
      map['routingControlArn'] = routingControlArnValue;
    }
    final searchStringValue = searchString;
    if (searchStringValue != null) {
      map['searchString'] = searchStringValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    map['type'] = type;
    return map;
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      childHealthThreshold:
          Input.asOptionalInput<int>(map['childHealthThreshold']),
      childHealthchecks:
          Input.asOptionalInput<List<String>>(map['childHealthchecks']),
      cloudwatchAlarmName:
          Input.asOptionalInput<String>(map['cloudwatchAlarmName']),
      cloudwatchAlarmRegion:
          Input.asOptionalInput<String>(map['cloudwatchAlarmRegion']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      enableSni: Input.asOptionalInput<bool>(map['enableSni']),
      failureThreshold: Input.asOptionalInput<int>(map['failureThreshold']),
      fqdn: Input.asOptionalInput<String>(map['fqdn']),
      insufficientDataHealthStatus:
          Input.asOptionalInput<String>(map['insufficientDataHealthStatus']),
      invertHealthcheck: Input.asOptionalInput<bool>(map['invertHealthcheck']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      measureLatency: Input.asOptionalInput<bool>(map['measureLatency']),
      port: Input.asOptionalInput<int>(map['port']),
      referenceName: Input.asOptionalInput<String>(map['referenceName']),
      regions: Input.asOptionalInput<List<String>>(map['regions']),
      requestInterval: Input.asOptionalInput<int>(map['requestInterval']),
      resourcePath: Input.asOptionalInput<String>(map['resourcePath']),
      routingControlArn:
          Input.asOptionalInput<String>(map['routingControlArn']),
      searchString: Input.asOptionalInput<String>(map['searchString']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      triggers: Input.asOptionalInput<Map<String, String>>(map['triggers']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
