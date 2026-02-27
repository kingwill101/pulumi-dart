import 'package:pulumi/pulumi.dart';
import 'query_log_args.dart';

/// Provides a Route53 query logging configuration resource.
///
/// > **NOTE:** There are restrictions on the configuration of query logging. Notably,
/// the CloudWatch log group must be in the `us-east-1` region,
/// a permissive CloudWatch log resource policy must be in place, and
/// the Route53 hosted zone must be public.
/// See [Configuring Logging for DNS Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html?console_help=true#query-logs-configuring) for additional details.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 query logging configurations using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/queryLog:QueryLog example_com xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
/// ```
class QueryLog extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Query Logging Config.
  late final Output<String> arn;

  /// CloudWatch log group ARN to send query logs.
  late final Output<String> cloudwatchLogGroupArn;

  /// Route53 hosted zone ID to enable query logs.
  late final Output<String> zoneId;

  QueryLog(
    String name, {
    QueryLogArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/queryLog:QueryLog',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLogGroupArn =
        registerOutput<String>('cloudwatchLogGroupArn');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
