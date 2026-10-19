// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition.dart';
import 'classification_job_schedule_frequency.dart';

/// {@template pulumi_macie2_classification_job_classification_job_args_doc}
/// The set of arguments for ClassificationJob.
/// {@endtemplate}
/// {@macro pulumi_macie2_classification_job_classification_job_args_doc}
class ClassificationJobArgs {
  /// Custom data identifiers to use for data analysis and classification.
  final pulumi.Input<List<String>?>? customDataIdentifierIds;
  /// Custom description of the job. Can contain as many as 200 characters.
  final pulumi.Input<String?>? description;
  /// Whether to analyze all existing, eligible objects immediately after the job is created.
  final pulumi.Input<bool?>? initialRun;
  /// Status for the job. Valid values are `CANCELLED`, `RUNNING` and `USER_PAUSED`.
  final pulumi.Input<String?>? jobStatus;
  /// Schedule for running the job. Valid values are `ONE_TIME`, to run the job only once, and `SCHEDULED`, to run the job on a daily, weekly, or monthly basis. When set to `SCHEDULED`, use `scheduleFrequency` to define the recurrence pattern for the job.
  final pulumi.Input<String> jobType;
  /// Custom name for the job. Can contain as many as 500 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// S3 buckets that contain the objects to analyze, and the scope of that analysis. See `s3JobDefinition` Block for details.
  final pulumi.Input<ClassificationJobS3JobDefinition> s3JobDefinition;
  /// Sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  final pulumi.Input<int?>? samplingPercentage;
  /// Recurrence pattern for running the job. To run the job only once, omit this argument and set `jobType` to `ONE_TIME`. See `scheduleFrequency` Block for details.
  final pulumi.Input<ClassificationJobScheduleFrequency?>? scheduleFrequency;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ClassificationJobArgs].
  /// [customDataIdentifierIds] Custom data identifiers to use for data analysis and classification.
  /// [description] Custom description of the job. Can contain as many as 200 characters.
  /// [initialRun] Whether to analyze all existing, eligible objects immediately after the job is created.
  /// [jobStatus] Status for the job. Valid values are `CANCELLED`, `RUNNING` and `USER_PAUSED`.
  /// [jobType] Schedule for running the job. Valid values are `ONE_TIME`, to run the job only once, and `SCHEDULED`, to run the job on a daily, weekly, or monthly basis. When set to `SCHEDULED`, use `scheduleFrequency` to define the recurrence pattern for the job.
  /// [name] Custom name for the job. Can contain as many as 500 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3JobDefinition] S3 buckets that contain the objects to analyze, and the scope of that analysis. See `s3JobDefinition` Block for details.
  /// [samplingPercentage] Sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  /// [scheduleFrequency] Recurrence pattern for running the job. To run the job only once, omit this argument and set `jobType` to `ONE_TIME`. See `scheduleFrequency` Block for details.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ClassificationJobArgs({
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
      customDataIdentifierIds: (() { final guardedValue = map['customDataIdentifierIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialRun: (() { final guardedValue = map['initialRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobStatus: (() { final guardedValue = map['jobStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3JobDefinition: pulumi.Input.fromValue(ClassificationJobS3JobDefinition.fromMap((map['s3JobDefinition']! as Map).cast<String, dynamic>())),
      samplingPercentage: (() { final guardedValue = map['samplingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scheduleFrequency: (() { final guardedValue = map['scheduleFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobScheduleFrequency.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
