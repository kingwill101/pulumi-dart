import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_args.dart';
import 'batch_operations_job_bucket_list.dart';
import 'batch_operations_job_delete_object.dart';
import 'batch_operations_job_put_metadata.dart';
import 'batch_operations_job_put_object_hold.dart';
import 'batch_operations_job_rewrite_object.dart';

/// Storage Batch Operations (SBO) is a Cloud Storage management feature that offers a
/// seamless experience to perform single batch operations on millions of GCS objects in a
/// serverless manner.
///
///
///
/// ## Example Usage
///
/// ### Storage Batch Operations
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-sample-bucket",
///     location: "us-central1",
///     forceDestroy: true,
/// });
/// const tf_job = new gcp.storage.BatchOperationsJob("tf-job", {
///     jobId: "tf-job",
///     bucketList: {
///         buckets: {
///             bucket: bucket.name,
///             prefixList: {
///                 includedObjectPrefixes: ["bkt"],
///             },
///         },
///     },
///     putMetadata: {
///         customMetadata: {
///             key: "value",
///         },
///     },
///     deleteProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-sample-bucket",
///     location="us-central1",
///     force_destroy=True)
/// tf_job = gcp.storage.BatchOperationsJob("tf-job",
///     job_id="tf-job",
///     bucket_list={
///         "buckets": {
///             "bucket": bucket.name,
///             "prefix_list": {
///                 "included_object_prefixes": ["bkt"],
///             },
///         },
///     },
///     put_metadata={
///         "custom_metadata": {
///             "key": "value",
///         },
///     },
///     delete_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-sample-bucket",
///         Location = "us-central1",
///         ForceDestroy = true,
///     });
///
///     var tf_job = new Gcp.Storage.BatchOperationsJob("tf-job", new()
///     {
///         JobId = "tf-job",
///         BucketList = new Gcp.Storage.Inputs.BatchOperationsJobBucketListArgs
///         {
///             Buckets = new Gcp.Storage.Inputs.BatchOperationsJobBucketListBucketsArgs
///             {
///                 Bucket = bucket.Name,
///                 PrefixList = new Gcp.Storage.Inputs.BatchOperationsJobBucketListBucketsPrefixListArgs
///                 {
///                     IncludedObjectPrefixes = new[]
///                     {
///                         "bkt",
///                     },
///                 },
///             },
///         },
///         PutMetadata = new Gcp.Storage.Inputs.BatchOperationsJobPutMetadataArgs
///         {
///             CustomMetadata =
///             {
///                 { "key", "value" },
///             },
///         },
///         DeleteProtection = false,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("tf-sample-bucket"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBatchOperationsJob(ctx, "tf-job", &storage.BatchOperationsJobArgs{
/// 			JobId: pulumi.String("tf-job"),
/// 			BucketList: &storage.BatchOperationsJobBucketListArgs{
/// 				Buckets: &storage.BatchOperationsJobBucketListBucketsArgs{
/// 					Bucket: bucket.Name,
/// 					PrefixList: &storage.BatchOperationsJobBucketListBucketsPrefixListArgs{
/// 						IncludedObjectPrefixes: pulumi.StringArray{
/// 							pulumi.String("bkt"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PutMetadata: &storage.BatchOperationsJobPutMetadataArgs{
/// 				CustomMetadata: pulumi.StringMap{
/// 					"key": pulumi.String("value"),
/// 				},
/// 			},
/// 			DeleteProtection: pulumi.Bool(false),
/// 		})
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
/// import com.pulumi.gcp.storage.BatchOperationsJob;
/// import com.pulumi.gcp.storage.BatchOperationsJobArgs;
/// import com.pulumi.gcp.storage.inputs.BatchOperationsJobBucketListArgs;
/// import com.pulumi.gcp.storage.inputs.BatchOperationsJobBucketListBucketsArgs;
/// import com.pulumi.gcp.storage.inputs.BatchOperationsJobBucketListBucketsPrefixListArgs;
/// import com.pulumi.gcp.storage.inputs.BatchOperationsJobPutMetadataArgs;
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
///             .name("tf-sample-bucket")
///             .location("us-central1")
///             .forceDestroy(true)
///             .build());
///
///         var tf_job = new BatchOperationsJob("tf-job", BatchOperationsJobArgs.builder()
///             .jobId("tf-job")
///             .bucketList(BatchOperationsJobBucketListArgs.builder()
///                 .buckets(BatchOperationsJobBucketListBucketsArgs.builder()
///                     .bucket(bucket.name())
///                     .prefixList(BatchOperationsJobBucketListBucketsPrefixListArgs.builder()
///                         .includedObjectPrefixes("bkt")
///                         .build())
///                     .build())
///                 .build())
///             .putMetadata(BatchOperationsJobPutMetadataArgs.builder()
///                 .customMetadata(Map.of("key", "value"))
///                 .build())
///             .deleteProtection(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-sample-bucket
///       location: us-central1
///       forceDestroy: true
///   tf-job:
///     type: gcp:storage:BatchOperationsJob
///     properties:
///       jobId: tf-job
///       bucketList:
///         buckets:
///           bucket: ${bucket.name}
///           prefixList:
///             includedObjectPrefixes:
///               - bkt
///       putMetadata:
///         customMetadata:
///           key: value
///       deleteProtection: false
/// ```
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/jobs/{{job_id}}`
///
/// * `{{project}}/{{job_id}}`
///
/// * `{{job_id}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/batchOperationsJob:BatchOperationsJob default projects/{{project}}/locations/global/jobs/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/batchOperationsJob:BatchOperationsJob default {{project}}/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/batchOperationsJob:BatchOperationsJob default {{job_id}}
/// ```
class BatchOperationsJob extends pulumi.CustomResource {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  late final pulumi.Output<BatchOperationsJobBucketList?> bucketList;

  /// The time that the job was completed.
  late final pulumi.Output<String> completeTime;

  /// The timestamp at which this storage batch operation was created.
  late final pulumi.Output<String> createTime;

  /// allows batch operations to delete objects in bucket
  /// Structure is documented below.
  late final pulumi.Output<BatchOperationsJobDeleteObject?> deleteObject;

  /// If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  late final pulumi.Output<bool?> deleteProtection;

  /// The ID of the job.
  late final pulumi.Output<String?> jobId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// allows batch operations to update metadata for objects in bucket
  /// Structure is documented below.
  late final pulumi.Output<BatchOperationsJobPutMetadata?> putMetadata;

  /// allows to update temporary hold or eventBased hold for objects in bucket.
  /// Structure is documented below.
  late final pulumi.Output<BatchOperationsJobPutObjectHold?> putObjectHold;

  /// allows to update encryption key for objects in bucket.
  /// Structure is documented below.
  late final pulumi.Output<BatchOperationsJobRewriteObject?> rewriteObject;

  /// The time that the job was scheduled.
  late final pulumi.Output<String> scheduleTime;

  /// State of the job.
  late final pulumi.Output<String> state;

  /// The timestamp at which this storage batch operation was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BatchOperationsJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BatchOperationsJob]. {@macro pulumi_storage_batch_operations_job_batch_operations_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BatchOperationsJob(
    String name, {
    BatchOperationsJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/batchOperationsJob:BatchOperationsJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketList =
        registerOutput<BatchOperationsJobBucketList?>('bucketList');
    this.completeTime = registerOutput<String>('completeTime');
    this.createTime = registerOutput<String>('createTime');
    this.deleteObject =
        registerOutput<BatchOperationsJobDeleteObject?>('deleteObject');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.jobId = registerOutput<String?>('jobId');
    this.project = registerOutput<String>('project');
    this.putMetadata =
        registerOutput<BatchOperationsJobPutMetadata?>('putMetadata');
    this.putObjectHold =
        registerOutput<BatchOperationsJobPutObjectHold?>('putObjectHold');
    this.rewriteObject =
        registerOutput<BatchOperationsJobRewriteObject?>('rewriteObject');
    this.scheduleTime = registerOutput<String>('scheduleTime');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
