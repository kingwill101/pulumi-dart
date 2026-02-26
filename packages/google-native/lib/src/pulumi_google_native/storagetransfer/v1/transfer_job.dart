import 'package:pulumi/pulumi.dart';
import 'event_stream_response.dart';
import 'logging_config_response5.dart';
import 'notification_config_response5.dart';
import 'schedule_response2.dart';
import 'transfer_job_args.dart';
import 'transfer_spec_response.dart';

/// Creates a transfer job that runs periodically.
class TransferJob extends CustomResource {
  /// The time that the transfer job was created.
  late final Output<String> creationTime;

  /// The time that the transfer job was deleted.
  late final Output<String> deletionTime;

  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  late final Output<String> description;

  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  late final Output<EventStreamResponse> eventStream;

  /// The time that the transfer job was last modified.
  late final Output<String> lastModificationTime;

  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  late final Output<String> latestOperationName;

  /// Logging configuration.
  late final Output<LoggingConfigResponse5> loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  late final Output<String> name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  late final Output<NotificationConfigResponse5> notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  late final Output<String> project;

  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  late final Output<ScheduleResponse2> schedule;

  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  late final Output<String> status;

  /// Transfer specification.
  late final Output<TransferSpecResponse> transferSpec;

  TransferJob(
    String name, {
    TransferJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:storagetransfer/v1:TransferJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = Output.createUnknown<String>();
    this.deletionTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.eventStream = Output.createUnknown<EventStreamResponse>();
    this.lastModificationTime = Output.createUnknown<String>();
    this.latestOperationName = Output.createUnknown<String>();
    this.loggingConfig = Output.createUnknown<LoggingConfigResponse5>();
    this.name = Output.createUnknown<String>();
    this.notificationConfig =
        Output.createUnknown<NotificationConfigResponse5>();
    this.project = Output.createUnknown<String>();
    this.schedule = Output.createUnknown<ScheduleResponse2>();
    this.status = Output.createUnknown<String>();
    this.transferSpec = Output.createUnknown<TransferSpecResponse>();
  }
}
