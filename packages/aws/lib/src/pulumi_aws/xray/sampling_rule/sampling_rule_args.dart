// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SamplingRule.
class SamplingRuleArgs {
  /// Matches attributes derived from the request.
  final pulumi.Input<Map<String, String>>? attributes;

  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  final pulumi.Input<double> fixedRate;

  /// Matches the hostname from a request URL.
  final pulumi.Input<String> host;

  /// Matches the HTTP method of a request.
  final pulumi.Input<String> httpMethod;

  /// The priority of the sampling rule.
  final pulumi.Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  final pulumi.Input<int> reservoirSize;

  /// Matches the ARN of the AWS resource on which the service runs.
  final pulumi.Input<String> resourceArn;

  /// The name of the sampling rule.
  final pulumi.Input<String>? ruleName;

  /// Matches the `name` that the service uses to identify itself in segments.
  final pulumi.Input<String> serviceName;

  /// Matches the `origin` that the service uses to identify its type in segments.
  final pulumi.Input<String> serviceType;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Matches the path from a request URL.
  final pulumi.Input<String> urlPath;

  /// The version of the sampling rule format (`1` )
  final pulumi.Input<int> version;

  SamplingRuleArgs({
    this.attributes,
    required this.fixedRate,
    required this.host,
    required this.httpMethod,
    required this.priority,
    this.region,
    required this.reservoirSize,
    required this.resourceArn,
    this.ruleName,
    required this.serviceName,
    required this.serviceType,
    this.tags,
    required this.urlPath,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    map['fixedRate'] = fixedRate;
    map['host'] = host;
    map['httpMethod'] = httpMethod;
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['reservoirSize'] = reservoirSize;
    map['resourceArn'] = resourceArn;
    final ruleNameValue = ruleName;
    if (ruleNameValue != null) {
      map['ruleName'] = ruleNameValue;
    }
    map['serviceName'] = serviceName;
    map['serviceType'] = serviceType;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['urlPath'] = urlPath;
    map['version'] = version;
    return map;
  }

  factory SamplingRuleArgs.fromMap(Map<String, dynamic> map) {
    return SamplingRuleArgs(
      attributes:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['attributes']),
      fixedRate: pulumi.Input.asInput<double>(map['fixedRate']),
      host: pulumi.Input.asInput<String>(map['host']),
      httpMethod: pulumi.Input.asInput<String>(map['httpMethod']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      reservoirSize: pulumi.Input.asInput<int>(map['reservoirSize']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      ruleName: pulumi.Input.asOptionalInput<String>(map['ruleName']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      serviceType: pulumi.Input.asInput<String>(map['serviceType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      urlPath: pulumi.Input.asInput<String>(map['urlPath']),
      version: pulumi.Input.asInput<int>(map['version']),
    );
  }
}
