import 'package:pulumi/pulumi.dart';
import '../transfer_job_event_stream/transfer_job_event_stream.dart';
import '../transfer_job_logging_config/transfer_job_logging_config.dart';
import '../transfer_job_notification_config/transfer_job_notification_config.dart';
import '../transfer_job_replication_spec/transfer_job_replication_spec.dart';
import '../transfer_job_schedule/transfer_job_schedule.dart';
import '../transfer_job_transfer_spec/transfer_job_transfer_spec.dart';
import 'transfer_job_args.dart';

/// Creates a new Transfer Job in Google Cloud Storage Transfer.
///
/// To get more information about Google Cloud Storage Transfer, see:
///
/// * [Overview](https://cloud.google.com/storage-transfer/docs/overview)
/// * [API documentation](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/transferJobs)
/// * How-to Guides
/// * [Configuring Access to Data Sources and Sinks](https://cloud.google.com/storage-transfer/docs/configure-access)
///
/// ## Example Usage
///
/// Example creating a nightly Transfer Job from an AWS S3 Bucket to a GCS bucket.
///
///
///
/// ## Import
///
/// Storage Transfer Jobs can be imported using the Transfer Job's `project` and `name` (without the `transferJob/` prefix), e.g.
///
/// * `{{project_id}}/{{name}}`, where `name` is a numeric value.
///
/// When using the `pulumi import` command, Storage Transfer Jobs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/transferJob:TransferJob default {{project_id}}/123456789
/// ```
class TransferJob extends CustomResource {
  /// When the Transfer Job was created.
  late final Output<String> creationTime;

  /// When the Transfer Job was deleted.
  late final Output<String> deletionTime;

  /// Unique description to identify the Transfer Job.
  late final Output<String> description;

  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  late final Output<TransferJobEventStream?> eventStream;

  /// When the Transfer Job was last modified.
  late final Output<String> lastModificationTime;

  /// Logging configuration. Structure documented below.
  late final Output<TransferJobLoggingConfig?> loggingConfig;

  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  late final Output<String> name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  late final Output<TransferJobNotificationConfig?> notificationConfig;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  ///
  /// - - -
  late final Output<TransferJobReplicationSpec?> replicationSpec;

  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  late final Output<TransferJobSchedule?> schedule;

  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  late final Output<String?> serviceAccount;

  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  late final Output<String?> status;

  /// Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  late final Output<TransferJobTransferSpec?> transferSpec;

  TransferJob(
    String name, {
    TransferJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:storage/transferJob:TransferJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.deletionTime = registerOutput<String>('deletionTime');
    this.description = registerOutput<String>('description');
    this.eventStream = registerOutput<TransferJobEventStream?>('eventStream');
    this.lastModificationTime = registerOutput<String>('lastModificationTime');
    this.loggingConfig =
        registerOutput<TransferJobLoggingConfig?>('loggingConfig');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<TransferJobNotificationConfig?>('notificationConfig');
    this.project = registerOutput<String>('project');
    this.replicationSpec =
        registerOutput<TransferJobReplicationSpec?>('replicationSpec');
    this.schedule = registerOutput<TransferJobSchedule?>('schedule');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.status = registerOutput<String?>('status');
    this.transferSpec =
        registerOutput<TransferJobTransferSpec?>('transferSpec');
  }
}
