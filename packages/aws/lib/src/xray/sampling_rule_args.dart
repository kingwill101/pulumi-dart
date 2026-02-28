// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_xray_sampling_rule_sampling_rule_args_doc}
/// The set of arguments for SamplingRule.
/// {@endtemplate}
/// {@macro pulumi_xray_sampling_rule_sampling_rule_args_doc}
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

  /// Creates a new [SamplingRuleArgs].
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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [urlPath] Matches the path from a request URL.
  /// [version] The version of the sampling rule format (`1` )
  SamplingRuleArgs({
    Map<String, String>? attributes,
    required double fixedRate,
    required String host,
    required String httpMethod,
    required int priority,
    String? region,
    required int reservoirSize,
    required String resourceArn,
    String? ruleName,
    required String serviceName,
    required String serviceType,
    Map<String, String>? tags,
    required String urlPath,
    required int version,
  }) :
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      fixedRate = pulumi.Input.asInput<double>(fixedRate),
      host = pulumi.Input.asInput<String>(host),
      httpMethod = pulumi.Input.asInput<String>(httpMethod),
      priority = pulumi.Input.asInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservoirSize = pulumi.Input.asInput<int>(reservoirSize),
      resourceArn = pulumi.Input.asInput<String>(resourceArn),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      serviceType = pulumi.Input.asInput<String>(serviceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      urlPath = pulumi.Input.asInput<String>(urlPath),
      version = pulumi.Input.asInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'fixedRate': fixedRate,
      'host': host,
      'httpMethod': httpMethod,
      'priority': priority,
      'region': ?region,
      'reservoirSize': reservoirSize,
      'resourceArn': resourceArn,
      'ruleName': ?ruleName,
      'serviceName': serviceName,
      'serviceType': serviceType,
      'tags': ?tags,
      'urlPath': urlPath,
      'version': version,
    };
  }

  factory SamplingRuleArgs.fromMap(Map<String, dynamic> map) {
    return SamplingRuleArgs(
      attributes: map['attributes'] == null ? null : (map['attributes'] as Map).cast<String, String>(),
      fixedRate: map['fixedRate'] as double,
      host: map['host'] as String,
      httpMethod: map['httpMethod'] as String,
      priority: map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      reservoirSize: map['reservoirSize'] as int,
      resourceArn: map['resourceArn'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      serviceName: map['serviceName'] as String,
      serviceType: map['serviceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      urlPath: map['urlPath'] as String,
      version: map['version'] as int,
    );
  }
}

