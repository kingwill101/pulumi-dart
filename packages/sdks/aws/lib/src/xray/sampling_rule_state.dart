// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SamplingRule resources.
class SamplingRuleState {
  /// The ARN of the sampling rule.
  final pulumi.Input<String?>? arn;
  /// Matches attributes derived from the request.
  final pulumi.Input<Map<String, String>?>? attributes;
  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  final pulumi.Input<double?>? fixedRate;
  /// Matches the hostname from a request URL.
  final pulumi.Input<String?>? host;
  /// Matches the HTTP method of a request.
  final pulumi.Input<String?>? httpMethod;
  /// The priority of the sampling rule.
  final pulumi.Input<int?>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  final pulumi.Input<int?>? reservoirSize;
  /// Matches the ARN of the AWS resource on which the service runs.
  final pulumi.Input<String?>? resourceArn;
  /// The name of the sampling rule.
  final pulumi.Input<String?>? ruleName;
  /// Matches the `name` that the service uses to identify itself in segments.
  final pulumi.Input<String?>? serviceName;
  /// Matches the `origin` that the service uses to identify its type in segments.
  final pulumi.Input<String?>? serviceType;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Matches the path from a request URL.
  final pulumi.Input<String?>? urlPath;
  /// The version of the sampling rule format (`1` )
  final pulumi.Input<int?>? version;

  /// Creates a new [SamplingRuleState].
  /// [arn] The ARN of the sampling rule.
  /// [attributes] Matches attributes derived from the request.
  /// [fixedRate] The percentage of matching requests to instrument, after the reservoir is exhausted.
  /// [host] Matches the hostname from a request URL.
  /// [httpMethod] Matches the HTTP method of a request.
  /// [priority] The priority of the sampling rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservoirSize] A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  /// [resourceArn] Matches the ARN of the AWS resource on which the service runs.
  /// [ruleName] The name of the sampling rule.
  /// [serviceName] Matches the `name` that the service uses to identify itself in segments.
  /// [serviceType] Matches the `origin` that the service uses to identify its type in segments.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [urlPath] Matches the path from a request URL.
  /// [version] The version of the sampling rule format (`1` )
  const SamplingRuleState({
    this.arn,
    this.attributes,
    this.fixedRate,
    this.host,
    this.httpMethod,
    this.priority,
    this.region,
    this.reservoirSize,
    this.resourceArn,
    this.ruleName,
    this.serviceName,
    this.serviceType,
    this.tags,
    this.tagsAll,
    this.urlPath,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?attributes,
      'fixedRate': ?fixedRate,
      'host': ?host,
      'httpMethod': ?httpMethod,
      'priority': ?priority,
      'region': ?region,
      'reservoirSize': ?reservoirSize,
      'resourceArn': ?resourceArn,
      'ruleName': ?ruleName,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'urlPath': ?urlPath,
      'version': ?version,
    };
  }

  factory SamplingRuleState.fromMap(Map<String, dynamic> map) {
    return SamplingRuleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      fixedRate: (() { final guardedValue = map['fixedRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservoirSize: (() { final guardedValue = map['reservoirSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      urlPath: (() { final guardedValue = map['urlPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
