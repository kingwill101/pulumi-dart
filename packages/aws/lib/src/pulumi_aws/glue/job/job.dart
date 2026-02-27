import 'package:pulumi/pulumi.dart';
import '../job_command/job_command.dart';
import '../job_execution_property/job_execution_property.dart';
import '../job_notification_property/job_notification_property.dart';
import '../job_source_control_details/job_source_control_details.dart';
import 'job_args.dart';

/// Provides a Glue Job resource.
///
/// > Glue functionality, such as monitoring and logging of jobs, is typically managed with the `default_arguments` argument. See the [Special Parameters Used by AWS Glue](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html) topic in the Glue developer guide for additional information.
///
/// ## Example Usage
///
/// ### Python Glue Job
///
///
///
/// ### Pythonshell Job
///
///
///
/// ### Ray Job
///
///
///
/// ### Scala Job
///
///
///
/// ### Streaming Job
///
///
///
/// ### Enabling CloudWatch Logs and Metrics
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Jobs using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/job:Job MyJob MyJob
/// ```
class Job extends CustomResource {
  /// Amazon Resource Name (ARN) of Glue Job
  late final Output<String> arn;

  /// The command of the job. Defined below.
  late final Output<JobCommand> command;

  /// The list of connections used for this job.
  late final Output<List<String>?> connections;

  /// The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-glue-arguments.html) topic in the developer guide.
  late final Output<Map<String, String>?> defaultArguments;

  /// Description of the job.
  late final Output<String?> description;

  /// Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: `FLEX`, `STANDARD`.
  late final Output<String?> executionClass;

  /// Execution property of the job. Defined below.
  late final Output<JobExecutionProperty> executionProperty;

  /// The version of glue to use, for example "1.0". Ray jobs should set this to 4.0 or greater. For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  late final Output<String> glueVersion;

  /// Describes how a job was created. Valid values are `SCRIPT`, `NOTEBOOK` and `VISUAL`.
  late final Output<String> jobMode;

  /// Specifies whether job run queuing is enabled for the job runs for this job. A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.
  late final Output<bool?> jobRunQueuingEnabled;

  /// Specifies the day of the week and hour for the maintenance window for streaming jobs.
  late final Output<String?> maintenanceWindow;

  /// The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `number_of_workers` and `worker_type` arguments instead with `glue_version` `2.0` and above.
  late final Output<double> maxCapacity;

  /// The maximum number of times to retry this job if it fails.
  late final Output<int?> maxRetries;

  /// The name you assign to this job. It must be unique in your account.
  late final Output<String> name;

  /// Non-overridable arguments for this job, specified as name-value pairs.
  late final Output<Map<String, String>?> nonOverridableArguments;

  /// Notification property of the job. Defined below.
  late final Output<JobNotificationProperty> notificationProperty;

  /// The number of workers of a defined workerType that are allocated when a job runs.
  late final Output<int> numberOfWorkers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the IAM role associated with this job.
  late final Output<String> roleArn;

  /// The name of the Security Configuration to be associated with the job.
  late final Output<String?> securityConfiguration;

  /// The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  late final Output<JobSourceControlDetails?> sourceControlDetails;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  late final Output<int> timeout;

  /// The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  late final Output<String> workerType;

  Job(
    String name, {
    JobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.command = registerOutput<JobCommand>('command');
    this.connections = registerOutput<List<String>?>('connections');
    this.defaultArguments =
        registerOutput<Map<String, String>?>('defaultArguments');
    this.description = registerOutput<String?>('description');
    this.executionClass = registerOutput<String?>('executionClass');
    this.executionProperty =
        registerOutput<JobExecutionProperty>('executionProperty');
    this.glueVersion = registerOutput<String>('glueVersion');
    this.jobMode = registerOutput<String>('jobMode');
    this.jobRunQueuingEnabled = registerOutput<bool?>('jobRunQueuingEnabled');
    this.maintenanceWindow = registerOutput<String?>('maintenanceWindow');
    this.maxCapacity = registerOutput<double>('maxCapacity');
    this.maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    this.nonOverridableArguments =
        registerOutput<Map<String, String>?>('nonOverridableArguments');
    this.notificationProperty =
        registerOutput<JobNotificationProperty>('notificationProperty');
    this.numberOfWorkers = registerOutput<int>('numberOfWorkers');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.securityConfiguration =
        registerOutput<String?>('securityConfiguration');
    this.sourceControlDetails =
        registerOutput<JobSourceControlDetails?>('sourceControlDetails');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeout = registerOutput<int>('timeout');
    this.workerType = registerOutput<String>('workerType');
  }
}
