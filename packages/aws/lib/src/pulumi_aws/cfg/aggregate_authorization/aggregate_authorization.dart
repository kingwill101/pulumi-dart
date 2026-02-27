import 'package:pulumi/pulumi.dart';
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
class AggregateAuthorization extends CustomResource {
  /// Account ID.
  late final Output<String> accountId;

  /// The ARN of the authorization
  late final Output<String> arn;

  /// The region authorized to collect aggregated data.
  late final Output<String?> authorizedAwsRegion;

  /// The region authorized to collect aggregated data. Use `authorized_aws_region` instead.
  late final Output<String?> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AggregateAuthorization(
    String name, {
    AggregateAuthorizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/aggregateAuthorization:AggregateAuthorization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.authorizedAwsRegion = registerOutput<String?>('authorizedAwsRegion');
    this.region = registerOutput<String?>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
