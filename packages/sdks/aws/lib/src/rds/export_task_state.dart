// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_task_timeouts.dart';

/// Input properties used for looking up and filtering ExportTask resources.
class ExportTaskState {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  final pulumi.Input<List<String>>? exportOnlies;
  /// Unique identifier for the snapshot export task.
  final pulumi.Input<String>? exportTaskIdentifier;
  /// Reason the export failed, if it failed.
  final pulumi.Input<String>? failureCause;
  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  final pulumi.Input<String>? iamRoleArn;
  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  final pulumi.Input<String>? kmsKeyId;
  /// Progress of the snapshot export task as a percentage.
  final pulumi.Input<int>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 bucket to export the snapshot to.
  final pulumi.Input<String>? s3BucketName;
  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final pulumi.Input<String>? s3Prefix;
  /// Time that the snapshot was created.
  final pulumi.Input<String>? snapshotTime;
  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? sourceArn;
  /// Type of source for the export.
  final pulumi.Input<String>? sourceType;
  /// Status of the export task.
  final pulumi.Input<String>? status;
  /// Time that the snapshot export task completed.
  final pulumi.Input<String>? taskEndTime;
  /// Time that the snapshot export task started.
  final pulumi.Input<String>? taskStartTime;
  final pulumi.Input<ExportTaskTimeouts>? timeouts;
  /// Warning about the snapshot export task, if any.
  final pulumi.Input<String>? warningMessage;

  /// Creates a new [ExportTaskState].
  /// [exportOnlies] Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  /// [exportTaskIdentifier] Unique identifier for the snapshot export task.
  /// [failureCause] Reason the export failed, if it failed.
  /// [iamRoleArn] ARN of the IAM role to use for writing to the Amazon S3 bucket.
  /// [kmsKeyId] ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  /// [percentProgress] Progress of the snapshot export task as a percentage.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] Name of the Amazon S3 bucket to export the snapshot to.
  /// [s3Prefix] Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  /// [snapshotTime] Time that the snapshot was created.
  /// [sourceArn] Amazon Resource Name (ARN) of the snapshot to export.
  /// [sourceType] Type of source for the export.
  /// [status] Status of the export task.
  /// [taskEndTime] Time that the snapshot export task completed.
  /// [taskStartTime] Time that the snapshot export task started.
  /// [timeouts] Optional.
  /// [warningMessage] Warning about the snapshot export task, if any.
  ExportTaskState({
    pulumi.Output<List<String>>? exportOnlies,
    pulumi.Output<String>? exportTaskIdentifier,
    pulumi.Output<String>? failureCause,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<int>? percentProgress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3BucketName,
    pulumi.Output<String>? s3Prefix,
    pulumi.Output<String>? snapshotTime,
    pulumi.Output<String>? sourceArn,
    pulumi.Output<String>? sourceType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? taskEndTime,
    pulumi.Output<String>? taskStartTime,
    pulumi.Output<ExportTaskTimeouts>? timeouts,
    pulumi.Output<String>? warningMessage,
  }) :
      exportOnlies = pulumi.Input.asOptionalInput<List<String>>(exportOnlies),
      exportTaskIdentifier = pulumi.Input.asOptionalInput<String>(exportTaskIdentifier),
      failureCause = pulumi.Input.asOptionalInput<String>(failureCause),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      percentProgress = pulumi.Input.asOptionalInput<int>(percentProgress),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3BucketName = pulumi.Input.asOptionalInput<String>(s3BucketName),
      s3Prefix = pulumi.Input.asOptionalInput<String>(s3Prefix),
      snapshotTime = pulumi.Input.asOptionalInput<String>(snapshotTime),
      sourceArn = pulumi.Input.asOptionalInput<String>(sourceArn),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      taskEndTime = pulumi.Input.asOptionalInput<String>(taskEndTime),
      taskStartTime = pulumi.Input.asOptionalInput<String>(taskStartTime),
      timeouts = pulumi.Input.asOptionalInput<ExportTaskTimeouts>(timeouts),
      warningMessage = pulumi.Input.asOptionalInput<String>(warningMessage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportOnlies': ?exportOnlies,
      'exportTaskIdentifier': ?exportTaskIdentifier,
      'failureCause': ?failureCause,
      'iamRoleArn': ?iamRoleArn,
      'kmsKeyId': ?kmsKeyId,
      'percentProgress': ?percentProgress,
      'region': ?region,
      's3BucketName': ?s3BucketName,
      's3Prefix': ?s3Prefix,
      'snapshotTime': ?snapshotTime,
      'sourceArn': ?sourceArn,
      'sourceType': ?sourceType,
      'status': ?status,
      'taskEndTime': ?taskEndTime,
      'taskStartTime': ?taskStartTime,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExportTaskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'warningMessage': ?warningMessage,
    };
  }

  factory ExportTaskState.fromMap(Map<String, dynamic> map) {
    return ExportTaskState(
      exportOnlies: map['exportOnlies'] == null ? null : pulumi.Output.create<List<String>>((map['exportOnlies'] as List).cast<String>()),
      exportTaskIdentifier: map['exportTaskIdentifier'] == null ? null : pulumi.Output.create<String>(map['exportTaskIdentifier'] as String),
      failureCause: map['failureCause'] == null ? null : pulumi.Output.create<String>(map['failureCause'] as String),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<int>(map['percentProgress'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3BucketName: map['s3BucketName'] == null ? null : pulumi.Output.create<String>(map['s3BucketName'] as String),
      s3Prefix: map['s3Prefix'] == null ? null : pulumi.Output.create<String>(map['s3Prefix'] as String),
      snapshotTime: map['snapshotTime'] == null ? null : pulumi.Output.create<String>(map['snapshotTime'] as String),
      sourceArn: map['sourceArn'] == null ? null : pulumi.Output.create<String>(map['sourceArn'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      taskEndTime: map['taskEndTime'] == null ? null : pulumi.Output.create<String>(map['taskEndTime'] as String),
      taskStartTime: map['taskStartTime'] == null ? null : pulumi.Output.create<String>(map['taskStartTime'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ExportTaskTimeouts>(ExportTaskTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      warningMessage: map['warningMessage'] == null ? null : pulumi.Output.create<String>(map['warningMessage'] as String),
    );
  }
}

