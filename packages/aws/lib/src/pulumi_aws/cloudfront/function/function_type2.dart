import 'package:pulumi/pulumi.dart';
import 'function_args2.dart';

/// Provides a CloudFront Function resource. With CloudFront Functions in Amazon CloudFront, you can write lightweight functions in JavaScript for high-scale, latency-sensitive CDN customizations.
///
/// See [CloudFront Functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-functions.html)
///
/// > **NOTE:** You cannot delete a function if it’s associated with a cache behavior. First, update your distributions to remove the function association from all cache behaviors, then delete the function.
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Functions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/function:Function test my_test_function
/// ```
class FunctionType2 extends CustomResource {
  /// Amazon Resource Name (ARN) identifying your CloudFront Function.
  late final Output<String> arn;

  /// Source code of the function
  late final Output<String> code;

  /// Comment.
  late final Output<String?> comment;

  /// ETag hash of the function. This is the value for the `DEVELOPMENT` stage of the function.
  late final Output<String> etag;

  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  late final Output<List<String>?> keyValueStoreAssociations;

  /// ETag hash of any `LIVE` stage of the function.
  late final Output<String> liveStageEtag;

  /// Unique name for your CloudFront Function.
  late final Output<String> name;

  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  late final Output<bool?> publish;

  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  late final Output<String> runtime;

  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  late final Output<String> status;

  FunctionType2(
    String name, {
    FunctionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/function:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.code = registerOutput<String>('code');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.keyValueStoreAssociations =
        registerOutput<List<String>?>('keyValueStoreAssociations');
    this.liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    this.publish = registerOutput<bool?>('publish');
    this.runtime = registerOutput<String>('runtime');
    this.status = registerOutput<String>('status');
  }
}
