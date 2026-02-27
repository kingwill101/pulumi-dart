import 'package:pulumi/pulumi.dart' as pulumi;
import '../classification_job_s3_job_definition/classification_job_s3_job_definition.dart';
import '../classification_job_schedule_frequency/classification_job_schedule_frequency.dart';
import '../classification_job_user_paused_detail/classification_job_user_paused_detail.dart';
import 'classification_job_args.dart';

/// Provides a resource to manage an [AWS Macie Classification Job](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.ClassificationJob` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationJob:ClassificationJob example abcd1
/// ```
class ClassificationJob extends pulumi.CustomResource {
  /// The date and time, in UTC and extended RFC 3339 format, when the job was created.
  late final pulumi.Output<String> createdAt;

  /// The custom data identifiers to use for data analysis and classification.
  late final pulumi.Output<List<String>> customDataIdentifierIds;

  /// A custom description of the job. The description can contain as many as 200 characters.
  late final pulumi.Output<String> description;

  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  late final pulumi.Output<bool?> initialRun;
  late final pulumi.Output<String> jobArn;
  late final pulumi.Output<String> jobId;

  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  late final pulumi.Output<String> jobStatus;

  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `schedule_frequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `schedule_frequency` property to define the recurrence pattern for the job.
  late final pulumi.Output<String> jobType;

  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  late final pulumi.Output<ClassificationJobS3JobDefinition> s3JobDefinition;

  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  late final pulumi.Output<int> samplingPercentage;

  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `job_type` property to `ONE_TIME`. (documented below)
  late final pulumi.Output<ClassificationJobScheduleFrequency>
      scheduleFrequency;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// If the current status of the job is `USER_PAUSED`, specifies when the job was paused and when the job or job run will expire and be canceled if it isn't resumed. This value is present only if the value for `job-status` is `USER_PAUSED`.
  late final pulumi.Output<List<ClassificationJobUserPausedDetail>>
      userPausedDetails;

  ClassificationJob(
    String name, {
    ClassificationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationJob:ClassificationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.customDataIdentifierIds =
        registerOutput<List<String>>('customDataIdentifierIds');
    this.description = registerOutput<String>('description');
    this.initialRun = registerOutput<bool?>('initialRun');
    this.jobArn = registerOutput<String>('jobArn');
    this.jobId = registerOutput<String>('jobId');
    this.jobStatus = registerOutput<String>('jobStatus');
    this.jobType = registerOutput<String>('jobType');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.s3JobDefinition =
        registerOutput<ClassificationJobS3JobDefinition>('s3JobDefinition');
    this.samplingPercentage = registerOutput<int>('samplingPercentage');
    this.scheduleFrequency =
        registerOutput<ClassificationJobScheduleFrequency>('scheduleFrequency');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userPausedDetails =
        registerOutput<List<ClassificationJobUserPausedDetail>>(
            'userPausedDetails');
  }
}
