// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_status_enum_value.dart';
import 'job_type_enum_value.dart';
import 'last_run_error_status.dart';
import 's3_bucket_criteria_for_job.dart';
import 's3_bucket_definition_for_job.dart';
import 'user_paused_details.dart';

/// Definition of awsMacie2JobSummary
class AwsMacie2JobSummaryProperties {
  /// <p>The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>
  final S3BucketCriteriaForJob? bucketCriteria;
  /// <p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>
  final List<S3BucketDefinitionForJob>? bucketDefinitions;
  /// <p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>
  final String? createdAt;
  /// <p>The unique identifier for the job.</p>
  final String? jobId;
  /// <p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
  final JobStatusEnumValue? jobStatus;
  /// <p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>
  final JobTypeEnumValue? jobType;
  /// <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>
  final LastRunErrorStatus? lastRunErrorStatus;
  /// <p>The custom name of the job.</p>
  final String? name;
  /// <p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>
  final UserPausedDetails? userPausedDetails;

  /// Creates a new [AwsMacie2JobSummaryProperties].
  /// [bucketCriteria] <p>The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>
  /// [bucketDefinitions] <p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>
  /// [createdAt] <p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>
  /// [jobId] <p>The unique identifier for the job.</p>
  /// [jobStatus] <p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>
  /// [jobType] <p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>
  /// [lastRunErrorStatus] <p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>
  /// [name] <p>The custom name of the job.</p>
  /// [userPausedDetails] <p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>
  AwsMacie2JobSummaryProperties({
    this.bucketCriteria,
    this.bucketDefinitions,
    this.createdAt,
    this.jobId,
    this.jobStatus,
    this.jobType,
    this.lastRunErrorStatus,
    this.name,
    this.userPausedDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketCriteria': ?bucketCriteria == null ? null : bucketCriteria!.toMap(),
      'bucketDefinitions': ?bucketDefinitions == null ? null : pulumi.Input.encodeList<S3BucketDefinitionForJob, Map<String, dynamic>>(bucketDefinitions!, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'jobId': ?jobId,
      'jobStatus': ?jobStatus == null ? null : jobStatus!.toMap(),
      'jobType': ?jobType == null ? null : jobType!.toMap(),
      'lastRunErrorStatus': ?lastRunErrorStatus == null ? null : lastRunErrorStatus!.toMap(),
      'name': ?name,
      'userPausedDetails': ?userPausedDetails == null ? null : userPausedDetails!.toMap(),
    };
  }

  factory AwsMacie2JobSummaryProperties.fromMap(Map<String, dynamic> map) {
    return AwsMacie2JobSummaryProperties(
      bucketCriteria: map['bucketCriteria'] == null ? null : S3BucketCriteriaForJob.fromMap((map['bucketCriteria'] as Map).cast<String, dynamic>()),
      bucketDefinitions: map['bucketDefinitions'] == null ? null : pulumi.Input.decodeList<S3BucketDefinitionForJob>(map['bucketDefinitions'], (value) => S3BucketDefinitionForJob.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      jobStatus: map['jobStatus'] == null ? null : JobStatusEnumValue.fromMap((map['jobStatus'] as Map).cast<String, dynamic>()),
      jobType: map['jobType'] == null ? null : JobTypeEnumValue.fromMap((map['jobType'] as Map).cast<String, dynamic>()),
      lastRunErrorStatus: map['lastRunErrorStatus'] == null ? null : LastRunErrorStatus.fromMap((map['lastRunErrorStatus'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      userPausedDetails: map['userPausedDetails'] == null ? null : UserPausedDetails.fromMap((map['userPausedDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

