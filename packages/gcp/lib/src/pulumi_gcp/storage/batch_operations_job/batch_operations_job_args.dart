// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../batch_operations_job_bucket_list/batch_operations_job_bucket_list.dart';
import '../batch_operations_job_delete_object/batch_operations_job_delete_object.dart';
import '../batch_operations_job_put_metadata/batch_operations_job_put_metadata.dart';
import '../batch_operations_job_put_object_hold/batch_operations_job_put_object_hold.dart';
import '../batch_operations_job_rewrite_object/batch_operations_job_rewrite_object.dart';

/// The set of arguments for BatchOperationsJob.
class BatchOperationsJobArgs {
  /// List of buckets and their objects to be transformed. Currently, only one bucket configuration is supported. If multiple buckets are specified, an error will be returned
  /// Structure is documented below.
  final Input<BatchOperationsJobBucketList>? bucketList;

  /// allows batch operations to delete objects in bucket
  /// Structure is documented below.
  final Input<BatchOperationsJobDeleteObject>? deleteObject;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the storage batch operation job will not be deleted and new job will be created.
  final Input<bool>? deleteProtection;

  /// The ID of the job.
  final Input<String>? jobId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// allows batch operations to update metadata for objects in bucket
  /// Structure is documented below.
  final Input<BatchOperationsJobPutMetadata>? putMetadata;

  /// allows to update temporary hold or eventBased hold for objects in bucket.
  /// Structure is documented below.
  final Input<BatchOperationsJobPutObjectHold>? putObjectHold;

  /// allows to update encryption key for objects in bucket.
  /// Structure is documented below.
  final Input<BatchOperationsJobRewriteObject>? rewriteObject;

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
      map['bucketList'] = Input.mapOptionalInputValue<
          BatchOperationsJobBucketList,
          Map<String, dynamic>>(bucketListValue, (value) => value.toMap());
    }
    final deleteObjectValue = deleteObject;
    if (deleteObjectValue != null) {
      map['deleteObject'] = Input.mapOptionalInputValue<
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
      map['putMetadata'] = Input.mapOptionalInputValue<
          BatchOperationsJobPutMetadata,
          Map<String, dynamic>>(putMetadataValue, (value) => value.toMap());
    }
    final putObjectHoldValue = putObjectHold;
    if (putObjectHoldValue != null) {
      map['putObjectHold'] = Input.mapOptionalInputValue<
          BatchOperationsJobPutObjectHold,
          Map<String, dynamic>>(putObjectHoldValue, (value) => value.toMap());
    }
    final rewriteObjectValue = rewriteObject;
    if (rewriteObjectValue != null) {
      map['rewriteObject'] = Input.mapOptionalInputValue<
          BatchOperationsJobRewriteObject,
          Map<String, dynamic>>(rewriteObjectValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchOperationsJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobArgs(
      bucketList: Input.asOptionalInput<BatchOperationsJobBucketList>(
          map['bucketList']),
      deleteObject: Input.asOptionalInput<BatchOperationsJobDeleteObject>(
          map['deleteObject']),
      deleteProtection: Input.asOptionalInput<bool>(map['deleteProtection']),
      jobId: Input.asOptionalInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
      putMetadata: Input.asOptionalInput<BatchOperationsJobPutMetadata>(
          map['putMetadata']),
      putObjectHold: Input.asOptionalInput<BatchOperationsJobPutObjectHold>(
          map['putObjectHold']),
      rewriteObject: Input.asOptionalInput<BatchOperationsJobRewriteObject>(
          map['rewriteObject']),
    );
  }
}
