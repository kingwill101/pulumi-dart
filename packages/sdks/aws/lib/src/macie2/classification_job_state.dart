// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition.dart';
import 'classification_job_schedule_frequency.dart';
import 'classification_job_user_paused_detail.dart';

/// Input properties used for looking up and filtering ClassificationJob resources.
class ClassificationJobState {
  /// The date and time, in UTC and extended RFC 3339 format, when the job was created.
  final pulumi.Input<String>? createdAt;
  /// The custom data identifiers to use for data analysis and classification.
  final pulumi.Input<List<String>>? customDataIdentifierIds;
  /// A custom description of the job. The description can contain as many as 200 characters.
  final pulumi.Input<String>? description;
  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  final pulumi.Input<bool>? initialRun;
  final pulumi.Input<String>? jobArn;
  final pulumi.Input<String>? jobId;
  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  final pulumi.Input<String>? jobStatus;
  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `schedule_frequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `schedule_frequency` property to define the recurrence pattern for the job.
  final pulumi.Input<String>? jobType;
  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinition>? s3JobDefinition;
  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  final pulumi.Input<int>? samplingPercentage;
  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `job_type` property to `ONE_TIME`. (documented below)
  final pulumi.Input<ClassificationJobScheduleFrequency>? scheduleFrequency;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// If the current status of the job is `USER_PAUSED`, specifies when the job was paused and when the job or job run will expire and be canceled if it isn't resumed. This value is present only if the value for `job-status` is `USER_PAUSED`.
  final pulumi.Input<List<ClassificationJobUserPausedDetail>>? userPausedDetails;

  /// Creates a new [ClassificationJobState].
  /// [createdAt] The date and time, in UTC and extended RFC 3339 format, when the job was created.
  /// [customDataIdentifierIds] The custom data identifiers to use for data analysis and classification.
  /// [description] A custom description of the job. The description can contain as many as 200 characters.
  /// [initialRun] Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  /// [jobArn] Optional.
  /// [jobId] Optional.
  /// [jobStatus] The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  /// [jobType] The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `schedule_frequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `schedule_frequency` property to define the recurrence pattern for the job.
  /// [name] A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3JobDefinition] The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  /// [samplingPercentage] The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  /// [scheduleFrequency] The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `job_type` property to `ONE_TIME`. (documented below)
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userPausedDetails] If the current status of the job is `USER_PAUSED`, specifies when the job was paused and when the job or job run will expire and be canceled if it isn't resumed. This value is present only if the value for `job-status` is `USER_PAUSED`.
  ClassificationJobState({
    this.createdAt,
    this.customDataIdentifierIds,
    this.description,
    this.initialRun,
    this.jobArn,
    this.jobId,
    this.jobStatus,
    this.jobType,
    this.name,
    this.namePrefix,
    this.region,
    this.s3JobDefinition,
    this.samplingPercentage,
    this.scheduleFrequency,
    this.tags,
    this.tagsAll,
    this.userPausedDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'customDataIdentifierIds': ?customDataIdentifierIds,
      'description': ?description,
      'initialRun': ?initialRun,
      'jobArn': ?jobArn,
      'jobId': ?jobId,
      'jobStatus': ?jobStatus,
      'jobType': ?jobType,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      's3JobDefinition': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinition, Map<String, dynamic>>(s3JobDefinition, (value) => value.toMap()),
      'samplingPercentage': ?samplingPercentage,
      'scheduleFrequency': ?pulumi.Input.mapOptionalInputValue<ClassificationJobScheduleFrequency, Map<String, dynamic>>(scheduleFrequency, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userPausedDetails': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobUserPausedDetail>, List<Map<String, dynamic>>>(userPausedDetails, (value) => pulumi.Input.encodeList<ClassificationJobUserPausedDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClassificationJobState.fromMap(Map<String, dynamic> map) {
    return ClassificationJobState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      customDataIdentifierIds: map['customDataIdentifierIds'] == null ? null : ((map['customDataIdentifierIds'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      initialRun: map['initialRun'] == null ? null : (map['initialRun'] as bool).input(),
      jobArn: map['jobArn'] == null ? null : (map['jobArn'] as String).input(),
      jobId: map['jobId'] == null ? null : (map['jobId'] as String).input(),
      jobStatus: map['jobStatus'] == null ? null : (map['jobStatus'] as String).input(),
      jobType: map['jobType'] == null ? null : (map['jobType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3JobDefinition: map['s3JobDefinition'] == null ? null : (ClassificationJobS3JobDefinition.fromMap((map['s3JobDefinition'] as Map).cast<String, dynamic>())).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage'] as int).input(),
      scheduleFrequency: map['scheduleFrequency'] == null ? null : (ClassificationJobScheduleFrequency.fromMap((map['scheduleFrequency'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      userPausedDetails: map['userPausedDetails'] == null ? null : (pulumi.Input.decodeList<ClassificationJobUserPausedDetail>(map['userPausedDetails'], (value) => ClassificationJobUserPausedDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

