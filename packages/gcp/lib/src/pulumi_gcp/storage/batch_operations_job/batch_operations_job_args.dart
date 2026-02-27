// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../batch_operations_job_bucket_list/batch_operations_job_bucket_list.dart';
import '../batch_operations_job_delete_object/batch_operations_job_delete_object.dart';
import '../batch_operations_job_put_metadata/batch_operations_job_put_metadata.dart';
import '../batch_operations_job_put_object_hold/batch_operations_job_put_object_hold.dart';
import '../batch_operations_job_rewrite_object/batch_operations_job_rewrite_object.dart';

/// The set of arguments for BatchOperationsJob.
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

  BatchOperationsJobArgs({
    this.bucketList,
    this.deleteObject,
    this.deleteProtection,
    this.jobId,
    this.project,
    this.putMetadata,
    this.putObjectHold,
    this.rewriteObject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketListValue = bucketList;
    if (bucketListValue != null) {
      map['bucketList'] = pulumi.Input.mapOptionalInputValue<
          BatchOperationsJobBucketList,
          Map<String, dynamic>>(bucketListValue, (value) => value.toMap());
    }
    final deleteObjectValue = deleteObject;
    if (deleteObjectValue != null) {
      map['deleteObject'] = pulumi.Input.mapOptionalInputValue<
          BatchOperationsJobDeleteObject,
          Map<String, dynamic>>(deleteObjectValue, (value) => value.toMap());
    }
    final deleteProtectionValue = deleteProtection;
    if (deleteProtectionValue != null) {
      map['deleteProtection'] = deleteProtectionValue;
    }
    final jobIdValue = jobId;
    if (jobIdValue != null) {
      map['jobId'] = jobIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final putMetadataValue = putMetadata;
    if (putMetadataValue != null) {
      map['putMetadata'] = pulumi.Input.mapOptionalInputValue<
          BatchOperationsJobPutMetadata,
          Map<String, dynamic>>(putMetadataValue, (value) => value.toMap());
    }
    final putObjectHoldValue = putObjectHold;
    if (putObjectHoldValue != null) {
      map['putObjectHold'] = pulumi.Input.mapOptionalInputValue<
          BatchOperationsJobPutObjectHold,
          Map<String, dynamic>>(putObjectHoldValue, (value) => value.toMap());
    }
    final rewriteObjectValue = rewriteObject;
    if (rewriteObjectValue != null) {
      map['rewriteObject'] = pulumi.Input.mapOptionalInputValue<
          BatchOperationsJobRewriteObject,
          Map<String, dynamic>>(rewriteObjectValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchOperationsJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobArgs(
      bucketList: pulumi.Input.asOptionalInput<BatchOperationsJobBucketList>(
          map['bucketList']),
      deleteObject:
          pulumi.Input.asOptionalInput<BatchOperationsJobDeleteObject>(
              map['deleteObject']),
      deleteProtection:
          pulumi.Input.asOptionalInput<bool>(map['deleteProtection']),
      jobId: pulumi.Input.asOptionalInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      putMetadata: pulumi.Input.asOptionalInput<BatchOperationsJobPutMetadata>(
          map['putMetadata']),
      putObjectHold:
          pulumi.Input.asOptionalInput<BatchOperationsJobPutObjectHold>(
              map['putObjectHold']),
      rewriteObject:
          pulumi.Input.asOptionalInput<BatchOperationsJobRewriteObject>(
              map['rewriteObject']),
    );
  }
}
