import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_authorization_args.dart';

/// Manages an AWS Config Aggregate Authorization
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Config aggregate authorizations using `account_id:authorized_aws_region`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/aggregateAuthorization:AggregateAuthorization example 123456789012:us-east-1
/// ```
class AggregateAuthorization extends pulumi.CustomResource {
  /// Account ID.
  late final pulumi.Output<String> accountId;

  /// The ARN of the authorization
  late final pulumi.Output<String> arn;

  /// The region authorized to collect aggregated data.
  late final pulumi.Output<String?> authorizedAwsRegion;

  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  late final pulumi.Output<String?> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AggregateAuthorization(
    String name, {
    AggregateAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/aggregateAuthorization:AggregateAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.authorizedAwsRegion = registerOutput<String?>('authorizedAwsRegion');
    this.region = registerOutput<String?>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
