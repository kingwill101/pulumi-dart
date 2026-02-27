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

  /// If set to `true`, the storage batch operation job will not be deleted and new job will be created.
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
