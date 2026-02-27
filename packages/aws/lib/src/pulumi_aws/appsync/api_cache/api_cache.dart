import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_cache_args.dart';

/// Provides an AppSync API Cache.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.ApiCache` using the AppSync API ID. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/apiCache:ApiCache example xxxxx
/// ```
class ApiCache extends pulumi.CustomResource {
  /// Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  late final pulumi.Output<String> apiCachingBehavior;

  /// GraphQL API ID.
  late final pulumi.Output<String> apiId;

  /// At-rest encryption flag for cache. You cannot update this setting after creation.
  late final pulumi.Output<bool> atRestEncryptionEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  late final pulumi.Output<bool> transitEncryptionEnabled;

  /// TTL in seconds for cache entries.
  late final pulumi.Output<int> ttl;

  /// Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  late final pulumi.Output<String> type;

  ApiCache(
    String name, {
    ApiCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/apiCache:ApiCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiCachingBehavior = registerOutput<String>('apiCachingBehavior');
    this.apiId = registerOutput<String>('apiId');
    this.atRestEncryptionEnabled =
        registerOutput<bool>('atRestEncryptionEnabled');
    this.region = registerOutput<String>('region');
    this.transitEncryptionEnabled =
        registerOutput<bool>('transitEncryptionEnabled');
    this.ttl = registerOutput<int>('ttl');
    this.type = registerOutput<String>('type');
  }
}
