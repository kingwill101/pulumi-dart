import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_state.dart';

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
class FunctionType extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifying your CloudFront Function.
  late final pulumi.Output<String> arn;
  /// Source code of the function
  late final pulumi.Output<String> code;
  /// Comment.
  late final pulumi.Output<String?> comment;
  /// ETag hash of the function. This is the value for the `DEVELOPMENT` stage of the function.
  late final pulumi.Output<String> etag;
  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  late final pulumi.Output<List<String>?> keyValueStoreAssociations;
  /// ETag hash of any `LIVE` stage of the function.
  late final pulumi.Output<String> liveStageEtag;
  /// Unique name for your CloudFront Function.
  late final pulumi.Output<String> name;
  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  late final pulumi.Output<bool?> publish;
  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> runtime;
  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  late final pulumi.Output<String> status;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_cloudfront_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.code = registerOutput<String>('code');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.keyValueStoreAssociations = registerOutput<List<String>?>('keyValueStoreAssociations');
    this.liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    this.publish = registerOutput<bool?>('publish');
    this.runtime = registerOutput<String>('runtime');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.code = registerOutput<String>('code');
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.keyValueStoreAssociations = registerOutput<List<String>?>('keyValueStoreAssociations');
    this.liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    this.publish = registerOutput<bool?>('publish');
    this.runtime = registerOutput<String>('runtime');
    this.status = registerOutput<String>('status');
  }
}
