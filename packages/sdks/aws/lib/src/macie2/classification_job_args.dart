// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition.dart';
import 'classification_job_schedule_frequency.dart';

/// {@template pulumi_macie2_classification_job_classification_job_args_doc}
/// The set of arguments for ClassificationJob.
/// {@endtemplate}
/// {@macro pulumi_macie2_classification_job_classification_job_args_doc}
class ClassificationJobArgs {
  /// The custom data identifiers to use for data analysis and classification.
  final pulumi.Input<List<String>>? customDataIdentifierIds;
  /// A custom description of the job. The description can contain as many as 200 characters.
  final pulumi.Input<String>? description;
  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  final pulumi.Input<bool>? initialRun;
  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  final pulumi.Input<String>? jobStatus;
  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `schedule_frequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `schedule_frequency` property to define the recurrence pattern for the job.
  final pulumi.Input<String> jobType;
  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinition> s3JobDefinition;
  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  final pulumi.Input<int>? samplingPercentage;
  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `job_type` property to `ONE_TIME`. (documented below)
  final pulumi.Input<ClassificationJobScheduleFrequency>? scheduleFrequency;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClassificationJobArgs].
  /// [customDataIdentifierIds] The custom data identifiers to use for data analysis and classification.
  /// [description] A custom description of the job. The description can contain as many as 200 characters.
  /// [initialRun] Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  /// [jobStatus] The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  /// [jobType] The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `schedule_frequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `schedule_frequency` property to define the recurrence pattern for the job.
  /// [name] A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3JobDefinition] The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  /// [samplingPercentage] The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  /// [scheduleFrequency] The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `job_type` property to `ONE_TIME`. (documented below)
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClassificationJobArgs({
    this.customDataIdentifierIds,
    this.description,
    this.initialRun,
    this.jobStatus,
    required this.jobType,
    this.name,
    this.namePrefix,
    this.region,
    required this.s3JobDefinition,
    this.samplingPercentage,
    this.scheduleFrequency,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDataIdentifierIds': ?customDataIdentifierIds,
      'description': ?description,
      'initialRun': ?initialRun,
      'jobStatus': ?jobStatus,
      'jobType': jobType,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      's3JobDefinition': pulumi.Input.mapInputValue<ClassificationJobS3JobDefinition, Map<String, dynamic>>(s3JobDefinition, (value) => value.toMap()),
      'samplingPercentage': ?samplingPercentage,
      'scheduleFrequency': ?pulumi.Input.mapOptionalInputValue<ClassificationJobScheduleFrequency, Map<String, dynamic>>(scheduleFrequency, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ClassificationJobArgs.fromMap(Map<String, dynamic> map) {
    return ClassificationJobArgs(
      customDataIdentifierIds: map['customDataIdentifierIds'] == null ? null : ((map['customDataIdentifierIds'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      initialRun: map['initialRun'] == null ? null : (map['initialRun'] as bool).input(),
      jobStatus: map['jobStatus'] == null ? null : (map['jobStatus'] as String).input(),
      jobType: (map['jobType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3JobDefinition: (ClassificationJobS3JobDefinition.fromMap((map['s3JobDefinition'] as Map).cast<String, dynamic>())).input(),
      samplingPercentage: map['samplingPercentage'] == null ? null : (map['samplingPercentage'] as int).input(),
      scheduleFrequency: map['scheduleFrequency'] == null ? null : (ClassificationJobScheduleFrequency.fromMap((map['scheduleFrequency'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

