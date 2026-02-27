import 'package:pulumi/pulumi.dart';
import 'anywhere_cache_args.dart';

/// The Google Cloud Storage (GCS) Anywhere Cache feature allows users to
/// create SSD backed zonal read cache for their buckets. These zonal
/// caches are co-located with the customers compute engines to provide
/// cost efficiency.
///
///
///
/// ## Example Usage
///
/// ### Storage Anywhere Cache Basic
///
///
///
///
/// ## Import
///
/// AnywhereCache can be imported using any of these accepted formats:
///
/// * `b/{{bucket}}/anywhereCaches/{{anywhere_cache_id}}`
///
/// * `{{bucket}}/{{anywhere_cache_id}}`
///
/// When using the `pulumi import` command, AnywhereCache can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/anywhereCache:AnywhereCache default b/{{bucket}}/anywhereCaches/{{anywhere_cache_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/anywhereCache:AnywhereCache default {{bucket}}/{{anywhere_cache_id}}
/// ```
class AnywhereCache extends CustomResource {
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  late final Output<String?> admissionPolicy;

  /// The ID of the Anywhere cache instance.
  late final Output<String> anywhereCacheId;

  /// A reference to Bucket resource
  late final Output<String> bucket;

  /// The creation time of the cache instance in RFC 3339 format.
  late final Output<String> createTime;

  /// True if the cache instance has an active Update long-running operation.
  late final Output<bool> pendingUpdate;

  /// The current state of the cache instance.
  late final Output<String> state;

  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  late final Output<String?> ttl;

  /// The modification time of the cache instance metadata in RFC 3339 format.
  late final Output<String> updateTime;

  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  late final Output<String> zone;

  AnywhereCache(
    String name, {
    AnywhereCacheArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/anywhereCache:AnywhereCache',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admissionPolicy = registerOutput<String?>('admissionPolicy');
    this.anywhereCacheId = registerOutput<String>('anywhereCacheId');
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.pendingUpdate = registerOutput<bool>('pendingUpdate');
    this.state = registerOutput<String>('state');
    this.ttl = registerOutput<String?>('ttl');
    this.updateTime = registerOutput<String>('updateTime');
    this.zone = registerOutput<String>('zone');
  }
}
