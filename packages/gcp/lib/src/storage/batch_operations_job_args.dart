// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_operations_job_bucket_list.dart';
import 'batch_operations_job_delete_object.dart';
import 'batch_operations_job_put_metadata.dart';
import 'batch_operations_job_put_object_hold.dart';
import 'batch_operations_job_rewrite_object.dart';

/// {@template pulumi_storage_batch_operations_job_batch_operations_job_args_doc}
/// The set of arguments for BatchOperationsJob.
/// {@endtemplate}
/// {@macro pulumi_storage_batch_operations_job_batch_operations_job_args_doc}
class BatchOperationsJobArgs {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobBucketList>? bucketList;

  /// allows batch operations to delete objects in bucket
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobDeleteObject>? deleteObject;

  /// If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  final pulumi.Input<bool>? deleteProtection;

  /// The ID of the job.
  final pulumi.Input<String>? jobId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// allows batch operations to update metadata for objects in bucket
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobPutMetadata>? putMetadata;

  /// allows to update temporary hold or eventBased hold for objects in bucket.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobPutObjectHold>? putObjectHold;

  /// allows to update encryption key for objects in bucket.
  /// Structure is documented below.
  final pulumi.Input<BatchOperationsJobRewriteObject>? rewriteObject;

  /// Creates a new [BatchOperationsJobArgs].
  /// [bucketList] List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// [deleteObject] allows batch operations to delete objects in bucket
  /// [deleteProtection] If set to `true`, the storage batch operation job will not be deleted and new job will be created.
  /// [jobId] The ID of the job.
  /// [project] The ID of the project in which the resource belongs.
  /// [putMetadata] allows batch operations to update metadata for objects in bucket
  /// [putObjectHold] allows to update temporary hold or eventBased hold for objects in bucket.
  /// [rewriteObject] allows to update encryption key for objects in bucket.
  BatchOperationsJobArgs({
    BatchOperationsJobBucketList? bucketList,
    BatchOperationsJobDeleteObject? deleteObject,
    bool? deleteProtection,
    String? jobId,
    String? project,
    BatchOperationsJobPutMetadata? putMetadata,
    BatchOperationsJobPutObjectHold? putObjectHold,
    BatchOperationsJobRewriteObject? rewriteObject,
  }) : bucketList = pulumi.Input.asOptionalInput<BatchOperationsJobBucketList>(
         bucketList,
       ),
       deleteObject = pulumi
           .Input.asOptionalInput<BatchOperationsJobDeleteObject>(deleteObject),
       deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
       jobId = pulumi.Input.asOptionalInput<String>(jobId),
       project = pulumi.Input.asOptionalInput<String>(project),
       putMetadata = pulumi
           .Input.asOptionalInput<BatchOperationsJobPutMetadata>(putMetadata),
       putObjectHold =
           pulumi.Input.asOptionalInput<BatchOperationsJobPutObjectHold>(
             putObjectHold,
           ),
       rewriteObject =
           pulumi.Input.asOptionalInput<BatchOperationsJobRewriteObject>(
             rewriteObject,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketList':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobBucketList,
            Map<String, dynamic>
          >(bucketList, (value) => value.toMap()),
      'deleteObject':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobDeleteObject,
            Map<String, dynamic>
          >(deleteObject, (value) => value.toMap()),
      'deleteProtection': ?deleteProtection,
      'jobId': ?jobId,
      'project': ?project,
      'putMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobPutMetadata,
            Map<String, dynamic>
          >(putMetadata, (value) => value.toMap()),
      'putObjectHold':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobPutObjectHold,
            Map<String, dynamic>
          >(putObjectHold, (value) => value.toMap()),
      'rewriteObject':
          ?pulumi.Input.mapOptionalInputValue<
            BatchOperationsJobRewriteObject,
            Map<String, dynamic>
          >(rewriteObject, (value) => value.toMap()),
    };
  }

  factory BatchOperationsJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobArgs(
      bucketList: map['bucketList'] == null
          ? null
          : BatchOperationsJobBucketList.fromMap(
              (map['bucketList'] as Map).cast<String, dynamic>(),
            ),
      deleteObject: map['deleteObject'] == null
          ? null
          : BatchOperationsJobDeleteObject.fromMap(
              (map['deleteObject'] as Map).cast<String, dynamic>(),
            ),
      deleteProtection: map['deleteProtection'] == null
          ? null
          : map['deleteProtection'] as bool,
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      putMetadata: map['putMetadata'] == null
          ? null
          : BatchOperationsJobPutMetadata.fromMap(
              (map['putMetadata'] as Map).cast<String, dynamic>(),
            ),
      putObjectHold: map['putObjectHold'] == null
          ? null
          : BatchOperationsJobPutObjectHold.fromMap(
              (map['putObjectHold'] as Map).cast<String, dynamic>(),
            ),
      rewriteObject: map['rewriteObject'] == null
          ? null
          : BatchOperationsJobRewriteObject.fromMap(
              (map['rewriteObject'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
