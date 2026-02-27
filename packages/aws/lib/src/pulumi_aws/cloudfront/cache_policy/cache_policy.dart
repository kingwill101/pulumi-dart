import 'package:pulumi/pulumi.dart';
import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin/cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';
import 'cache_policy_args.dart';

/// ## Example Usage
///
/// Use the `aws.cloudfront.CachePolicy` resource to create a cache policy for CloudFront.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront cache policies using the `id` of the cache policy. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/cachePolicy:CachePolicy policy 658327ea-f89d-4fab-a63d-7e88639e58f6
/// ```
class CachePolicy extends CustomResource {
  /// The cache policy ARN.
  late final Output<String> arn;

  /// Description for the cache policy.
  late final Output<String?> comment;

  /// Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  late final Output<int?> defaultTtl;

  /// Current version of the cache policy.
  late final Output<String> etag;

  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  late final Output<int?> maxTtl;

  /// Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  late final Output<int?> minTtl;

  /// Unique name used to identify the cache policy.
  late final Output<String> name;

  /// Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  late final Output<CachePolicyParametersInCacheKeyAndForwardedToOrigin>
      parametersInCacheKeyAndForwardedToOrigin;

  CachePolicy(
    String name, {
    CachePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/cachePolicy:CachePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.defaultTtl = registerOutput<int?>('defaultTtl');
    this.etag = registerOutput<String>('etag');
    this.maxTtl = registerOutput<int?>('maxTtl');
    this.minTtl = registerOutput<int?>('minTtl');
    this.name = registerOutput<String>('name');
    this.parametersInCacheKeyAndForwardedToOrigin =
        registerOutput<CachePolicyParametersInCacheKeyAndForwardedToOrigin>(
            'parametersInCacheKeyAndForwardedToOrigin');
  }
}
