import 'package:pulumi/pulumi.dart' as pulumi;
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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "bucket-name",
///     location: "US",
/// });
/// const destroyWait5000Seconds = new time.Sleep("destroy_wait_5000_seconds", {destroyDuration: "5000s"}, {
///     dependsOn: [bucket],
/// });
/// const cache = new gcp.storage.AnywhereCache("cache", {
///     bucket: bucket.name,
///     zone: "us-central1-f",
///     ttl: "3601s",
/// }, {
///     dependsOn: [destroyWait5000Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="bucket-name",
///     location="US")
/// destroy_wait5000_seconds = time.Sleep("destroy_wait_5000_seconds", destroy_duration="5000s",
/// opts = pulumi.ResourceOptions(depends_on=[bucket]))
/// cache = gcp.storage.AnywhereCache("cache",
///     bucket=bucket.name,
///     zone="us-central1-f",
///     ttl="3601s",
///     opts = pulumi.ResourceOptions(depends_on=[destroy_wait5000_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "bucket-name",
///         Location = "US",
///     });
///
///     var destroyWait5000Seconds = new Time.Sleep("destroy_wait_5000_seconds", new()
///     {
///         DestroyDuration = "5000s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             bucket,
///         },
///     });
///
///     var cache = new Gcp.Storage.AnywhereCache("cache", new()
///     {
///         Bucket = bucket.Name,
///         Zone = "us-central1-f",
///         Ttl = "3601s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             destroyWait5000Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("bucket-name"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destroyWait5000Seconds, err := time.NewSleep(ctx, "destroy_wait_5000_seconds", &time.SleepArgs{
/// 			DestroyDuration: pulumi.String("5000s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			bucket,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewAnywhereCache(ctx, "cache", &storage.AnywhereCacheArgs{
/// 			Bucket: bucket.Name,
/// 			Zone:   pulumi.String("us-central1-f"),
/// 			Ttl:    pulumi.String("3601s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			destroyWait5000Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.storage.AnywhereCache;
/// import com.pulumi.gcp.storage.AnywhereCacheArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("bucket-name")
///             .location("US")
///             .build());
///
///         var destroyWait5000Seconds = new Sleep("destroyWait5000Seconds", SleepArgs.builder()
///             .destroyDuration("5000s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(bucket)
///                 .build());
///
///         var cache = new AnywhereCache("cache", AnywhereCacheArgs.builder()
///             .bucket(bucket.name())
///             .zone("us-central1-f")
///             .ttl("3601s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(destroyWait5000Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: bucket-name
///       location: US
///   destroyWait5000Seconds:
///     type: time:Sleep
///     name: destroy_wait_5000_seconds
///     properties:
///       destroyDuration: 5000s
///     options:
///       dependsOn:
///         - ${bucket}
///   cache:
///     type: gcp:storage:AnywhereCache
///     properties:
///       bucket: ${bucket.name}
///       zone: us-central1-f
///       ttl: 3601s
///     options:
///       dependsOn:
///         - ${destroyWait5000Seconds}
/// ```
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
class AnywhereCache extends pulumi.CustomResource {
  /// The cache admission policy dictates whether a block should be inserted upon a cache miss.
  /// Default value is `admit-on-first-miss`.
  /// Possible values are: `admit-on-first-miss`, `admit-on-second-miss`.
  late final pulumi.Output<String?> admissionPolicy;
  /// The ID of the Anywhere cache instance.
  late final pulumi.Output<String> anywhereCacheId;
  /// A reference to Bucket resource
  late final pulumi.Output<String> bucket;
  /// The creation time of the cache instance in RFC 3339 format.
  late final pulumi.Output<String> createTime;
  /// True if the cache instance has an active Update long-running operation.
  late final pulumi.Output<bool> pendingUpdate;
  /// The current state of the cache instance.
  late final pulumi.Output<String> state;
  /// The TTL of all cache entries in whole seconds. e.g., "7200s". It defaults to `86400s`
  late final pulumi.Output<String?> ttl;
  /// The modification time of the cache instance metadata in RFC 3339 format.
  late final pulumi.Output<String> updateTime;
  /// The zone in which the cache instance needs to be created. For example, `us-central1-a.`
  late final pulumi.Output<String> zone;

  /// Creates a new [AnywhereCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnywhereCache]. {@macro pulumi_storage_anywhere_cache_anywhere_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnywhereCache(
    String name, {
    AnywhereCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/anywhereCache:AnywhereCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
