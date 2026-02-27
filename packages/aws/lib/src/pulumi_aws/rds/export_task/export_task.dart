import 'package:pulumi/pulumi.dart';
import '../export_task_timeouts/export_task_timeouts.dart';
import 'export_task_args.dart';

/// Resource for managing an AWS RDS (Relational Database) Export Task.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Complete Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a RDS (Relational Database) Export Task using the `export_task_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/exportTask:ExportTask example example
/// ```
class ExportTask extends CustomResource {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  late final Output<List<String>?> exportOnlies;

  /// Unique identifier for the snapshot export task.
  late final Output<String> exportTaskIdentifier;

  /// Reason the export failed, if it failed.
  late final Output<String> failureCause;

  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  late final Output<String> iamRoleArn;

  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  late final Output<String> kmsKeyId;

  /// Progress of the snapshot export task as a percentage.
  late final Output<int> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the Amazon S3 bucket to export the snapshot to.
  late final Output<String> s3BucketName;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  late final Output<String> s3Prefix;

  /// Time that the snapshot was created.
  late final Output<String> snapshotTime;

  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  late final Output<String> sourceArn;

  /// Type of source for the export.
  late final Output<String> sourceType;

  /// Status of the export task.
  late final Output<String> status;

  /// Time that the snapshot export task completed.
  late final Output<String> taskEndTime;

  /// Time that the snapshot export task started.
  late final Output<String> taskStartTime;
  late final Output<ExportTaskTimeouts?> timeouts;

  /// Warning about the snapshot export task, if any.
  late final Output<String> warningMessage;

  ExportTask(
    String name, {
    ExportTaskArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/exportTask:ExportTask',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.exportOnlies = registerOutput<List<String>?>('exportOnlies');
    this.exportTaskIdentifier = registerOutput<String>('exportTaskIdentifier');
    this.failureCause = registerOutput<String>('failureCause');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.percentProgress = registerOutput<int>('percentProgress');
    this.region = registerOutput<String>('region');
    this.s3BucketName = registerOutput<String>('s3BucketName');
    this.s3Prefix = registerOutput<String>('s3Prefix');
    this.snapshotTime = registerOutput<String>('snapshotTime');
    this.sourceArn = registerOutput<String>('sourceArn');
    this.sourceType = registerOutput<String>('sourceType');
    this.status = registerOutput<String>('status');
    this.taskEndTime = registerOutput<String>('taskEndTime');
    this.taskStartTime = registerOutput<String>('taskStartTime');
    this.timeouts = registerOutput<ExportTaskTimeouts?>('timeouts');
    this.warningMessage = registerOutput<String>('warningMessage');
  }
}
