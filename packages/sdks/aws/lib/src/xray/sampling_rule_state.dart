// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SamplingRule resources.
class SamplingRuleState {
  /// The ARN of the sampling rule.
  final pulumi.Input<String>? arn;
  /// Matches attributes derived from the request.
  final pulumi.Input<Map<String, String>>? attributes;
  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  final pulumi.Input<double>? fixedRate;
  /// Matches the hostname from a request URL.
  final pulumi.Input<String>? host;
  /// Matches the HTTP method of a request.
  final pulumi.Input<String>? httpMethod;
  /// The priority of the sampling rule.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  final pulumi.Input<int>? reservoirSize;
  /// Matches the ARN of the AWS resource on which the service runs.
  final pulumi.Input<String>? resourceArn;
  /// The name of the sampling rule.
  final pulumi.Input<String>? ruleName;
  /// Matches the `name` that the service uses to identify itself in segments.
  final pulumi.Input<String>? serviceName;
  /// Matches the `origin` that the service uses to identify its type in segments.
  final pulumi.Input<String>? serviceType;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Matches the path from a request URL.
  final pulumi.Input<String>? urlPath;
  /// The version of the sampling rule format (`1` )
  final pulumi.Input<int>? version;

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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [urlPath] Matches the path from a request URL.
  /// [version] The version of the sampling rule format (`1` )
  SamplingRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<Map<String, String>>? attributes,
    pulumi.Output<double>? fixedRate,
    pulumi.Output<String>? host,
    pulumi.Output<String>? httpMethod,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<int>? reservoirSize,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? urlPath,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      fixedRate = pulumi.Input.asOptionalInput<double>(fixedRate),
      host = pulumi.Input.asOptionalInput<String>(host),
      httpMethod = pulumi.Input.asOptionalInput<String>(httpMethod),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservoirSize = pulumi.Input.asOptionalInput<int>(reservoirSize),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      urlPath = pulumi.Input.asOptionalInput<String>(urlPath),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributes'] as Map).cast<String, String>()),
      fixedRate: map['fixedRate'] == null ? null : pulumi.Output.create<double>(map['fixedRate'] as double),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      httpMethod: map['httpMethod'] == null ? null : pulumi.Output.create<String>(map['httpMethod'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservoirSize: map['reservoirSize'] == null ? null : pulumi.Output.create<int>(map['reservoirSize'] as int),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceType: map['serviceType'] == null ? null : pulumi.Output.create<String>(map['serviceType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      urlPath: map['urlPath'] == null ? null : pulumi.Output.create<String>(map['urlPath'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

