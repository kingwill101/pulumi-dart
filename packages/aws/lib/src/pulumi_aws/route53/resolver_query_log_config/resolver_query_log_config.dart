import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_query_log_config_args.dart';

/// Provides a Route 53 Resolver query logging configuration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver query logging configurations using the Route 53 Resolver query logging configuration ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig example rqlc-92edc3b1838248bf
/// ```
class ResolverQueryLogConfig extends pulumi.CustomResource {
  /// The ARN (Amazon Resource Name) of the Route 53 Resolver query logging configuration.
  late final pulumi.Output<String> arn;

  /// The ARN of the resource that you want Route 53 Resolver to send query logs.
  /// You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.
  late final pulumi.Output<String> destinationArn;

  /// The name of the Route 53 Resolver query logging configuration.
  late final pulumi.Output<String> name;

  /// The AWS account ID of the account that created the query logging configuration.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account.
  /// Sharing is configured through AWS Resource Access Manager (AWS RAM).
  /// Values are `NOT_SHARED`, `SHARED_BY_ME` or `SHARED_WITH_ME`
  late final pulumi.Output<String> shareStatus;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ResolverQueryLogConfig(
    String name, {
    ResolverQueryLogConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverQueryLogConfig:ResolverQueryLogConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destinationArn = registerOutput<String>('destinationArn');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.shareStatus = registerOutput<String>('shareStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
