// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HealthCheck resources.
class HealthCheckState {
  /// The Amazon Resource Name (ARN) of the Health Check.
  final pulumi.Input<String>? arn;
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
  /// &gt; **Note:** After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of `invert_healthcheck`.
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  final pulumi.Input<Map<String, String>>? triggers;
  /// The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  final pulumi.Input<String>? type;

  /// Creates a new [HealthCheckState].
  /// [arn] The Amazon Resource Name (ARN) of the Health Check.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  /// [type] The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  HealthCheckState({
    this.arn,
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
    this.tagsAll,
    this.triggers,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
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
      'tagsAll': ?tagsAll,
      'triggers': ?triggers,
      'type': ?type,
    };
  }

  factory HealthCheckState.fromMap(Map<String, dynamic> map) {
    return HealthCheckState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      childHealthThreshold: (() { final guardedValue = map['childHealthThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      childHealthchecks: (() { final guardedValue = map['childHealthchecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cloudwatchAlarmName: (() { final guardedValue = map['cloudwatchAlarmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchAlarmRegion: (() { final guardedValue = map['cloudwatchAlarmRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSni: (() { final guardedValue = map['enableSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insufficientDataHealthStatus: (() { final guardedValue = map['insufficientDataHealthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertHealthcheck: (() { final guardedValue = map['invertHealthcheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      measureLatency: (() { final guardedValue = map['measureLatency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      referenceName: (() { final guardedValue = map['referenceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestInterval: (() { final guardedValue = map['requestInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourcePath: (() { final guardedValue = map['resourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingControlArn: (() { final guardedValue = map['routingControlArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchString: (() { final guardedValue = map['searchString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

