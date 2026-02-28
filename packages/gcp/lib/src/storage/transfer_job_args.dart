// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_event_stream.dart';
import 'transfer_job_logging_config.dart';
import 'transfer_job_notification_config.dart';
import 'transfer_job_replication_spec.dart';
import 'transfer_job_schedule.dart';
import 'transfer_job_transfer_spec.dart';

/// {@template pulumi_storage_transfer_job_transfer_job_args_doc}
/// The set of arguments for TransferJob.
/// {@endtemplate}
/// {@macro pulumi_storage_transfer_job_transfer_job_args_doc}
class TransferJobArgs {
  /// Unique description to identify the Transfer Job.
  final pulumi.Input<String> description;

  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  final pulumi.Input<TransferJobEventStream>? eventStream;

  /// Logging configuration. Structure documented below.
  final pulumi.Input<TransferJobLoggingConfig>? loggingConfig;

  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  final pulumi.Input<String>? name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  final pulumi.Input<TransferJobNotificationConfig>? notificationConfig;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  ///
  /// - - -
  final pulumi.Input<TransferJobReplicationSpec>? replicationSpec;

  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  final pulumi.Input<TransferJobSchedule>? schedule;

  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  final pulumi.Input<String>? serviceAccount;

  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  final pulumi.Input<String>? status;

  /// Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  final pulumi.Input<TransferJobTransferSpec>? transferSpec;

  /// Creates a new [TransferJobArgs].
  /// [description] Unique description to identify the Transfer Job.
  /// [eventStream] Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  /// [loggingConfig] Logging configuration. Structure documented below.
  /// [name] The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  /// [project] The project in which the resource belongs. If it
  /// [replicationSpec] Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  /// [schedule] Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  /// [serviceAccount] The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  /// [status] Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  /// [transferSpec] Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  TransferJobArgs({
    required String description,
    TransferJobEventStream? eventStream,
    TransferJobLoggingConfig? loggingConfig,
    String? name,
    TransferJobNotificationConfig? notificationConfig,
    String? project,
    TransferJobReplicationSpec? replicationSpec,
    TransferJobSchedule? schedule,
    String? serviceAccount,
    String? status,
    TransferJobTransferSpec? transferSpec,
  })  : description = pulumi.Input.asInput<String>(description),
        eventStream =
            pulumi.Input.asOptionalInput<TransferJobEventStream>(eventStream),
        loggingConfig = pulumi.Input.asOptionalInput<TransferJobLoggingConfig>(
            loggingConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        notificationConfig =
            pulumi.Input.asOptionalInput<TransferJobNotificationConfig>(
                notificationConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        replicationSpec =
            pulumi.Input.asOptionalInput<TransferJobReplicationSpec>(
                replicationSpec),
        schedule = pulumi.Input.asOptionalInput<TransferJobSchedule>(schedule),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        status = pulumi.Input.asOptionalInput<String>(status),
        transferSpec =
            pulumi.Input.asOptionalInput<TransferJobTransferSpec>(transferSpec);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    final eventStreamValue = eventStream;
    if (eventStreamValue != null) {
      map['eventStream'] = pulumi.Input.mapOptionalInputValue<
          TransferJobEventStream,
          Map<String, dynamic>>(eventStreamValue, (value) => value.toMap());
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          TransferJobLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = pulumi.Input.mapOptionalInputValue<
              TransferJobNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replicationSpecValue = replicationSpec;
    if (replicationSpecValue != null) {
      map['replicationSpec'] = pulumi.Input.mapOptionalInputValue<
          TransferJobReplicationSpec,
          Map<String, dynamic>>(replicationSpecValue, (value) => value.toMap());
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = pulumi.Input.mapOptionalInputValue<TransferJobSchedule,
          Map<String, dynamic>>(scheduleValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final transferSpecValue = transferSpec;
    if (transferSpecValue != null) {
      map['transferSpec'] = pulumi.Input.mapOptionalInputValue<
          TransferJobTransferSpec,
          Map<String, dynamic>>(transferSpecValue, (value) => value.toMap());
    }
    return map;
  }

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description: map['description'] as String,
      eventStream: map['eventStream'] == null
          ? null
          : TransferJobEventStream.fromMap(
              (map['eventStream'] as Map).cast<String, dynamic>()),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : TransferJobLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      notificationConfig: map['notificationConfig'] == null
          ? null
          : TransferJobNotificationConfig.fromMap(
              (map['notificationConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      replicationSpec: map['replicationSpec'] == null
          ? null
          : TransferJobReplicationSpec.fromMap(
              (map['replicationSpec'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null
          ? null
          : TransferJobSchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transferSpec: map['transferSpec'] == null
          ? null
          : TransferJobTransferSpec.fromMap(
              (map['transferSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
