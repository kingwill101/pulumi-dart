import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_state.dart';

/// Provides a CloudFront Function resource. With CloudFront Functions in Amazon CloudFront, you can write lightweight functions in JavaScript for high-scale, latency-sensitive CDN customizations.
///
/// See [CloudFront Functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-functions.html)
///
/// &gt; **NOTE:** You cannot delete a function if it’s associated with a cache behavior. First, update your distributions to remove the function association from all cache behaviors, then delete the function.
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
  /// ARN identifying your CloudFront Function.
  late final pulumi.Output<String> arn;
  /// Source code of the function. Must be between 1 and 40960 bytes.
  late final pulumi.Output<String> code;
  /// Comment. Must not exceed 128 characters.
  late final pulumi.Output<String?> comment;
  /// ETag hash of the function. This is the value for the `DEVELOPMENT` stage of the function.
  late final pulumi.Output<String> etag;
  /// List of `aws.cloudfront.KeyValueStore` ARNs to be associated to the function. AWS limits associations to one key value store per function.
  late final pulumi.Output<List<String>?> keyValueStoreAssociations;
  /// ETag hash of any `LIVE` stage of the function.
  late final pulumi.Output<String> liveStageEtag;
  /// Unique name for your CloudFront Function. Valid names contain only alphanumeric characters, hyphens, and underscores, and must be between 1 and 64 characters.
  late final pulumi.Output<String> name;
  /// Whether to publish creation/change as Live CloudFront Function Version. Defaults to `true`.
  late final pulumi.Output<bool?> publish;
  /// Identifier of the function's runtime. Valid values are `cloudfront-js-1.0` and `cloudfront-js-2.0`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> runtime;
  /// Status of the function. Can be `UNPUBLISHED`, `UNASSOCIATED` or `ASSOCIATED`.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    code = registerOutput<String>('code');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    keyValueStoreAssociations = registerOutput<List<String>?>('keyValueStoreAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool?>('publish');
    runtime = registerOutput<String>('runtime');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    arn = registerOutput<String>('arn');
    code = registerOutput<String>('code');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    keyValueStoreAssociations = registerOutput<List<String>?>('keyValueStoreAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool?>('publish');
    runtime = registerOutput<String>('runtime');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [FunctionType] resource.
  FunctionType.reference(String urn)
    : super(
        'aws:cloudfront/function:Function',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    code = registerOutput<String>('code');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    keyValueStoreAssociations = registerOutput<List<String>?>('keyValueStoreAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    liveStageEtag = registerOutput<String>('liveStageEtag');
    this.name = registerOutput<String>('name');
    publish = registerOutput<bool?>('publish');
    runtime = registerOutput<String>('runtime');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
