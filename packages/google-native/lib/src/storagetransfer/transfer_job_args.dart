// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_stream.dart';
import 'logging_config.dart';
import 'notification_config.dart';
import 'schedule.dart';
import 'transfer_job_status.dart';
import 'transfer_spec.dart';

/// {@template pulumi_storagetransfer_v1_transfer_job_args_doc}
/// The set of arguments for TransferJob.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_transfer_job_args_doc}
class TransferJobArgs {
  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  final pulumi.Input<String>? description;

  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  final pulumi.Input<EventStream>? eventStream;

  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  final pulumi.Input<String>? latestOperationName;

  /// Logging configuration.
  final pulumi.Input<LoggingConfig>? loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  final pulumi.Input<String>? name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  final pulumi.Input<NotificationConfig>? notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  final pulumi.Input<String>? project;

  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  final pulumi.Input<Schedule>? schedule;

  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  final pulumi.Input<TransferJobStatus>? status;

  /// Transfer specification.
  final pulumi.Input<TransferSpec>? transferSpec;

  /// Creates a new [TransferJobArgs].
  /// [description] A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  /// [eventStream] Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  /// [latestOperationName] The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  /// [loggingConfig] Logging configuration.
  /// [name] A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem.
  /// [project] The ID of the Google Cloud project that owns the job.
  /// [schedule] Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  /// [status] Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  /// [transferSpec] Transfer specification.
  TransferJobArgs({
    String? description,
    EventStream? eventStream,
    String? latestOperationName,
    LoggingConfig? loggingConfig,
    String? name,
    NotificationConfig? notificationConfig,
    String? project,
    Schedule? schedule,
    TransferJobStatus? status,
    TransferSpec? transferSpec,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        eventStream = pulumi.Input.asOptionalInput<EventStream>(eventStream),
        latestOperationName =
            pulumi.Input.asOptionalInput<String>(latestOperationName),
        loggingConfig =
            pulumi.Input.asOptionalInput<LoggingConfig>(loggingConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        notificationConfig = pulumi.Input.asOptionalInput<NotificationConfig>(
            notificationConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        schedule = pulumi.Input.asOptionalInput<Schedule>(schedule),
        status = pulumi.Input.asOptionalInput<TransferJobStatus>(status),
        transferSpec = pulumi.Input.asOptionalInput<TransferSpec>(transferSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final eventStreamValue = eventStream;
    if (eventStreamValue != null) {
      map['eventStream'] =
          pulumi.Input.mapOptionalInputValue<EventStream, Map<String, dynamic>>(
              eventStreamValue, (value) => value.toMap());
    }
    final latestOperationNameValue = latestOperationName;
    if (latestOperationNameValue != null) {
      map['latestOperationName'] = latestOperationNameValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<LoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              NotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] =
          pulumi.Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(
              scheduleValue, (value) => value.toMap());
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] =
          pulumi.Input.mapOptionalInputValue<TransferJobStatus, String>(
              statusValue, (value) => value.value);
    }
    final transferSpecValue = transferSpec;
    if (transferSpecValue != null) {
      map['transferSpec'] = pulumi.Input.mapOptionalInputValue<TransferSpec,
          Map<String, dynamic>>(transferSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      eventStream: map['eventStream'] == null
          ? null
          : EventStream.fromMap(
              (map['eventStream'] as Map).cast<String, dynamic>()),
      latestOperationName: map['latestOperationName'] == null
          ? null
          : map['latestOperationName'] as String,
      loggingConfig: map['loggingConfig'] == null
          ? null
          : LoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      notificationConfig: map['notificationConfig'] == null
          ? null
          : NotificationConfig.fromMap(
              (map['notificationConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      schedule: map['schedule'] == null
          ? null
          : Schedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      status: map['status'] == null
          ? null
          : TransferJobStatus.fromValue(map['status'] as String),
      transferSpec: map['transferSpec'] == null
          ? null
          : TransferSpec.fromMap(
              (map['transferSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
