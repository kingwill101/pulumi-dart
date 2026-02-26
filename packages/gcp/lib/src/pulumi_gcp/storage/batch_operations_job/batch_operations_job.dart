import 'package:pulumi/pulumi.dart';
import '../batch_operations_job_bucket_list/batch_operations_job_bucket_list.dart';
import '../batch_operations_job_delete_object/batch_operations_job_delete_object.dart';
import '../batch_operations_job_put_metadata/batch_operations_job_put_metadata.dart';
import '../batch_operations_job_put_object_hold/batch_operations_job_put_object_hold.dart';
import '../batch_operations_job_rewrite_object/batch_operations_job_rewrite_object.dart';
import 'batch_operations_job_args.dart';

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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
/// name: "tf-sample-bucket",
/// location: "us-central1",
/// forceDestroy: true,
/// });
/// const tf_job = new gcp.storage.BatchOperationsJob("tf-job", {
/// jobId: "tf-job",
/// bucketList: {
/// buckets: {
/// bucket: bucket.name,
/// prefixList: {
/// includedObjectPrefixes: ["bkt"],
/// },
/// },
/// },
/// putMetadata: {
/// customMetadata: {
/// key: "value",
/// },
/// },
/// deleteProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
/// name="tf-sample-bucket",
/// location="us-central1",
/// force_destroy=True)
/// tf_job = gcp.storage.BatchOperationsJob("tf-job",
/// job_id="tf-job",
/// bucket_list={
/// "buckets": {
/// "bucket": bucket.name,
/// "prefix_list": {
/// "included_object_prefixes": ["bkt"],
/// },
/// },
/// },
/// put_metadata={
/// "custom_metadata": {
/// "key": "value",
/// },
/// },
/// delete_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// Name = "tf-sample-bucket",
/// Location = "us-central1",
/// ForceDestroy = true,
/// });
///
/// var tf_job = new Gcp.Storage.BatchOperationsJob("tf-job", new()
/// {
/// JobId = "tf-job",
/// BucketList = new Gcp.Storage.Inputs.BatchOperationsJobBucketListArgs
/// {
/// Buckets = new Gcp.Storage.Inputs.BatchOperationsJobBucketListBucketsArgs
/// {
/// Bucket = bucket.Name,
/// PrefixList = new Gcp.Storage.Inputs.BatchOperationsJobBucketListBucketsPrefixListArgs
/// {
/// IncludedObjectPrefixes = new[]
/// {
/// "bkt",
/// },
/// },
/// },
/// },
/// PutMetadata = new Gcp.Storage.Inputs.BatchOperationsJobPutMetadataArgs
/// {
/// CustomMetadata =
/// {
/// { "key", "value" },
/// },
/// },
/// DeleteProtection = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// Name:         pulumi.String("tf-sample-bucket"),
/// Location:     pulumi.String("us-central1"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewBatchOperationsJob(ctx, "tf-job", &storage.BatchOperationsJobArgs{
/// JobId: pulumi.String("tf-job"),
/// BucketList: &storage.BatchOperationsJobBucketListArgs{
/// Buckets: &storage.BatchOperationsJobBucketListBucketsArgs{
/// Bucket: bucket.Name,
/// PrefixList: &storage.BatchOperationsJobBucketListBucketsPrefixListArgs{
/// IncludedObjectPrefixes: pulumi.StringArray{
/// pulumi.String("bkt"),
/// },
/// },
/// },
/// },
/// PutMetadata: &storage.BatchOperationsJobPutMetadataArgs{
/// CustomMetadata: pulumi.StringMap{
/// "key": pulumi.String("value"),
/// },
/// },
/// DeleteProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .name("tf-sample-bucket")
/// .location("us-central1")
/// .forceDestroy(true)
/// .build());
///
/// var tf_job = new BatchOperationsJob("tf-job", BatchOperationsJobArgs.builder()
/// .jobId("tf-job")
/// .bucketList(BatchOperationsJobBucketListArgs.builder()
/// .buckets(BatchOperationsJobBucketListBucketsArgs.builder()
/// .bucket(bucket.name())
/// .prefixList(BatchOperationsJobBucketListBucketsPrefixListArgs.builder()
/// .includedObjectPrefixes("bkt")
/// .build())
/// .build())
/// .build())
/// .putMetadata(BatchOperationsJobPutMetadataArgs.builder()
/// .customMetadata(Map.of("key", "value"))
/// .build())
/// .deleteProtection(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: tf-sample-bucket
/// location: us-central1
/// forceDestroy: true
/// tf-job:
/// type: gcp:storage:BatchOperationsJob
/// properties:
/// jobId: tf-job
/// bucketList:
/// buckets:
/// bucket: ${bucket.name}
/// prefixList:
/// includedObjectPrefixes:
/// - bkt
/// putMetadata:
/// customMetadata:
/// key: value
/// deleteProtection: false
/// ```
/// <!--End PulumiCodeChooser -->
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
class BatchOperationsJob extends CustomResource {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  late final Output<BatchOperationsJobBucketList?> bucketList;

  /// The time that the job was completed.
  late final Output<String> completeTime;

  /// The timestamp at which this storage batch operation was created.
  late final Output<String> createTime;

  /// allows batch operations to delete objects in bucket
  /// Structure is documented below.
  late final Output<BatchOperationsJobDeleteObject?> deleteObject;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the storage batch operation job will not be deleted and new job will be created.
  late final Output<bool?> deleteProtection;

  /// The ID of the job.
  late final Output<String?> jobId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// allows batch operations to update metadata for objects in bucket
  /// Structure is documented below.
  late final Output<BatchOperationsJobPutMetadata?> putMetadata;

  /// allows to update temporary hold or eventBased hold for objects in bucket.
  /// Structure is documented below.
  late final Output<BatchOperationsJobPutObjectHold?> putObjectHold;

  /// allows to update encryption key for objects in bucket.
  /// Structure is documented below.
  late final Output<BatchOperationsJobRewriteObject?> rewriteObject;

  /// The time that the job was scheduled.
  late final Output<String> scheduleTime;

  /// State of the job.
  late final Output<String> state;

  /// The timestamp at which this storage batch operation was most recently updated.
  late final Output<String> updateTime;

  BatchOperationsJob(
    String name, {
    BatchOperationsJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/batchOperationsJob:BatchOperationsJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketList = Output.createUnknown<BatchOperationsJobBucketList?>();
    this.completeTime = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deleteObject = Output.createUnknown<BatchOperationsJobDeleteObject?>();
    this.deleteProtection = Output.createUnknown<bool?>();
    this.jobId = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.putMetadata = Output.createUnknown<BatchOperationsJobPutMetadata?>();
    this.putObjectHold =
        Output.createUnknown<BatchOperationsJobPutObjectHold?>();
    this.rewriteObject =
        Output.createUnknown<BatchOperationsJobRewriteObject?>();
    this.scheduleTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
