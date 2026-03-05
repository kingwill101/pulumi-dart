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
  /// &lt;p&gt;The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.&lt;/p&gt;
  final pulumi.Input<S3BucketCriteriaForJob>? bucketCriteria;
  /// &lt;p&gt;An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.&lt;/p&gt;
  final pulumi.Input<List<S3BucketDefinitionForJob>>? bucketDefinitions;
  /// &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when the job was created.&lt;/p&gt;
  final pulumi.Input<String>? createdAt;
  /// &lt;p&gt;The unique identifier for the job.&lt;/p&gt;
  final pulumi.Input<String>? jobId;
  /// &lt;p&gt;The current status of the job. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  final pulumi.Input<JobStatusEnumValue>? jobStatus;
  /// &lt;p&gt;The schedule for running the job. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ONE_TIME - The job runs only once.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;SCHEDULED - The job runs on a daily, weekly, or monthly basis.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  final pulumi.Input<JobTypeEnumValue>? jobType;
  /// &lt;p&gt;Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.&lt;/p&gt;
  final pulumi.Input<LastRunErrorStatus>? lastRunErrorStatus;
  /// &lt;p&gt;The custom name of the job.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.&lt;/p&gt;
  final pulumi.Input<UserPausedDetails>? userPausedDetails;

  /// Creates a new [AwsMacie2JobSummaryProperties].
  /// [bucketCriteria] &lt;p&gt;The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.&lt;/p&gt;
  /// [bucketDefinitions] &lt;p&gt;An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.&lt;/p&gt;
  /// [createdAt] &lt;p&gt;The date and time, in UTC and extended ISO 8601 format, when the job was created.&lt;/p&gt;
  /// [jobId] &lt;p&gt;The unique identifier for the job.&lt;/p&gt;
  /// [jobStatus] &lt;p&gt;The current status of the job. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  /// [jobType] &lt;p&gt;The schedule for running the job. Possible values are:&lt;/p&gt; &lt;ul&gt;&lt;li&gt;&lt;p&gt;ONE_TIME - The job runs only once.&lt;/p&gt;&lt;/li&gt; &lt;li&gt;&lt;p&gt;SCHEDULED - The job runs on a daily, weekly, or monthly basis.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;
  /// [lastRunErrorStatus] &lt;p&gt;Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.&lt;/p&gt;
  /// [name] &lt;p&gt;The custom name of the job.&lt;/p&gt;
  /// [userPausedDetails] &lt;p&gt;If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.&lt;/p&gt;
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
      'bucketCriteria': ?pulumi.Input.mapOptionalInputValue<S3BucketCriteriaForJob, Map<String, dynamic>>(bucketCriteria, (value) => value.toMap()),
      'bucketDefinitions': ?pulumi.Input.mapOptionalInputValue<List<S3BucketDefinitionForJob>, List<Map<String, dynamic>>>(bucketDefinitions, (value) => pulumi.Input.encodeList<S3BucketDefinitionForJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'jobId': ?jobId,
      'jobStatus': ?pulumi.Input.mapOptionalInputValue<JobStatusEnumValue, Map<String, dynamic>>(jobStatus, (value) => value.toMap()),
      'jobType': ?pulumi.Input.mapOptionalInputValue<JobTypeEnumValue, Map<String, dynamic>>(jobType, (value) => value.toMap()),
      'lastRunErrorStatus': ?pulumi.Input.mapOptionalInputValue<LastRunErrorStatus, Map<String, dynamic>>(lastRunErrorStatus, (value) => value.toMap()),
      'name': ?name,
      'userPausedDetails': ?pulumi.Input.mapOptionalInputValue<UserPausedDetails, Map<String, dynamic>>(userPausedDetails, (value) => value.toMap()),
    };
  }

  factory AwsMacie2JobSummaryProperties.fromMap(Map<String, dynamic> map) {
    return AwsMacie2JobSummaryProperties(
      bucketCriteria: (() { final guardedValue = map['bucketCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3BucketCriteriaForJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucketDefinitions: (() { final guardedValue = map['bucketDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<S3BucketDefinitionForJob>(guardedValue, (value) => S3BucketDefinitionForJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobStatus: (() { final guardedValue = map['jobStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobType: (() { final guardedValue = map['jobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastRunErrorStatus: (() { final guardedValue = map['lastRunErrorStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LastRunErrorStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPausedDetails: (() { final guardedValue = map['userPausedDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPausedDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

