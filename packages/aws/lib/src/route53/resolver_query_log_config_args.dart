// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_query_log_config_resolver_query_log_config_args_doc}
/// The set of arguments for ResolverQueryLogConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_query_log_config_resolver_query_log_config_args_doc}
class ResolverQueryLogConfigArgs {
  /// The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.
  final pulumi.Input<String> destinationArn;

  /// The name of the Route 53 Resolver query logging configuration.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverQueryLogConfigArgs].
  /// [destinationArn] The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// [name] The name of the Route 53 Resolver query logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ResolverQueryLogConfigArgs({
    required String destinationArn,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : destinationArn = pulumi.Input.asInput<String>(destinationArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ResolverQueryLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverQueryLogConfigArgs(
      destinationArn: map['destinationArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
