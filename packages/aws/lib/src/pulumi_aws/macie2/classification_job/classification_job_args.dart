// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../classification_job_s3_job_definition/classification_job_s3_job_definition.dart';
import '../classification_job_schedule_frequency/classification_job_schedule_frequency.dart';

/// The set of arguments for ClassificationJob.
class ClassificationJobArgs {
  /// The custom data identifiers to use for data analysis and classification.
  final Input<List<String>>? customDataIdentifierIds;

  /// A custom description of the job. The description can contain as many as 200 characters.
  final Input<String>? description;

  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  final Input<bool>? initialRun;

  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  final Input<String>? jobStatus;

  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the <span pulumi-lang-nodejs="`scheduleFrequency`" pulumi-lang-dotnet="`ScheduleFrequency`" pulumi-lang-go="`scheduleFrequency`" pulumi-lang-python="`schedule_frequency`" pulumi-lang-yaml="`scheduleFrequency`" pulumi-lang-java="`scheduleFrequency`">`schedule_frequency`</span> property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the <span pulumi-lang-nodejs="`scheduleFrequency`" pulumi-lang-dotnet="`ScheduleFrequency`" pulumi-lang-go="`scheduleFrequency`" pulumi-lang-python="`schedule_frequency`" pulumi-lang-yaml="`scheduleFrequency`" pulumi-lang-java="`scheduleFrequency`">`schedule_frequency`</span> property to define the recurrence pattern for the job.
  final Input<String> jobType;

  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  final Input<ClassificationJobS3JobDefinition> s3JobDefinition;

  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  final Input<int>? samplingPercentage;

  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the <span pulumi-lang-nodejs="`jobType`" pulumi-lang-dotnet="`JobType`" pulumi-lang-go="`jobType`" pulumi-lang-python="`job_type`" pulumi-lang-yaml="`jobType`" pulumi-lang-java="`jobType`">`job_type`</span> property to `ONE_TIME`. (documented below)
  final Input<ClassificationJobScheduleFrequency>? scheduleFrequency;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final customDataIdentifierIdsValue = customDataIdentifierIds;
    if (customDataIdentifierIdsValue != null) {
      map['customDataIdentifierIds'] = customDataIdentifierIdsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final initialRunValue = initialRun;
    if (initialRunValue != null) {
      map['initialRun'] = initialRunValue;
    }
    final jobStatusValue = jobStatus;
    if (jobStatusValue != null) {
      map['jobStatus'] = jobStatusValue;
    }
    map['jobType'] = jobType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3JobDefinition'] = Input.mapInputValue<
        ClassificationJobS3JobDefinition,
        Map<String, dynamic>>(s3JobDefinition, (value) => value.toMap());
    final samplingPercentageValue = samplingPercentage;
    if (samplingPercentageValue != null) {
      map['samplingPercentage'] = samplingPercentageValue;
    }
    final scheduleFrequencyValue = scheduleFrequency;
    if (scheduleFrequencyValue != null) {
      map['scheduleFrequency'] = Input.mapOptionalInputValue<
              ClassificationJobScheduleFrequency, Map<String, dynamic>>(
          scheduleFrequencyValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClassificationJobArgs.fromMap(Map<String, dynamic> map) {
    return ClassificationJobArgs(
      customDataIdentifierIds:
          Input.asOptionalInput<List<String>>(map['customDataIdentifierIds']),
      description: Input.asOptionalInput<String>(map['description']),
      initialRun: Input.asOptionalInput<bool>(map['initialRun']),
      jobStatus: Input.asOptionalInput<String>(map['jobStatus']),
      jobType: Input.asInput<String>(map['jobType']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      s3JobDefinition: Input.asInput<ClassificationJobS3JobDefinition>(
          map['s3JobDefinition']),
      samplingPercentage: Input.asOptionalInput<int>(map['samplingPercentage']),
      scheduleFrequency:
          Input.asOptionalInput<ClassificationJobScheduleFrequency>(
              map['scheduleFrequency']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
