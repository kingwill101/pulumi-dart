// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_command.dart';
import 'job_execution_property.dart';
import 'job_notification_property.dart';
import 'job_source_control_details.dart';

/// {@template pulumi_glue_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_glue_job_job_args_doc}
class JobArgs {
  /// The command of the job. Defined below.
  final pulumi.Input<JobCommand> command;

  /// The list of connections used for this job.
  final pulumi.Input<List<String>>? connections;

  /// The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-glue-arguments.html) topic in the developer guide.
  final pulumi.Input<Map<String, String>>? defaultArguments;

  /// Description of the job.
  final pulumi.Input<String>? description;

  /// Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: `FLEX`, `STANDARD`.
  final pulumi.Input<String>? executionClass;

  /// Execution property of the job. Defined below.
  final pulumi.Input<JobExecutionProperty>? executionProperty;

  /// The version of glue to use, for example "1.0". Ray jobs should set this to 4.0 or greater. For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  final pulumi.Input<String>? glueVersion;

  /// Describes how a job was created. Valid values are `SCRIPT`, `NOTEBOOK` and `VISUAL`.
  final pulumi.Input<String>? jobMode;

  /// Specifies whether job run queuing is enabled for the job runs for this job. A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.
  final pulumi.Input<bool>? jobRunQueuingEnabled;

  /// Specifies the day of the week and hour for the maintenance window for streaming jobs.
  final pulumi.Input<String>? maintenanceWindow;

  /// The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `number_of_workers` and `worker_type` arguments instead with `glue_version` `2.0` and above.
  final pulumi.Input<double>? maxCapacity;

  /// The maximum number of times to retry this job if it fails.
  final pulumi.Input<int>? maxRetries;

  /// The name you assign to this job. It must be unique in your account.
  final pulumi.Input<String>? name;

  /// Non-overridable arguments for this job, specified as name-value pairs.
  final pulumi.Input<Map<String, String>>? nonOverridableArguments;

  /// Notification property of the job. Defined below.
  final pulumi.Input<JobNotificationProperty>? notificationProperty;

  /// The number of workers of a defined workerType that are allocated when a job runs.
  final pulumi.Input<int>? numberOfWorkers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the IAM role associated with this job.
  final pulumi.Input<String> roleArn;

  /// The name of the Security Configuration to be associated with the job.
  final pulumi.Input<String>? securityConfiguration;

  /// The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  final pulumi.Input<JobSourceControlDetails>? sourceControlDetails;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  final pulumi.Input<int>? timeout;

  /// The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  final pulumi.Input<String>? workerType;

  /// Creates a new [JobArgs].
  /// [command] The command of the job. Defined below.
  /// [connections] The list of connections used for this job.
  /// [defaultArguments] The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-glue-arguments.html) topic in the developer guide.
  /// [description] Description of the job.
  /// [executionClass] Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: `FLEX`, `STANDARD`.
  /// [executionProperty] Execution property of the job. Defined below.
  /// [glueVersion] The version of glue to use, for example "1.0". Ray jobs should set this to 4.0 or greater. For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  /// [jobMode] Describes how a job was created. Valid values are `SCRIPT`, `NOTEBOOK` and `VISUAL`.
  /// [jobRunQueuingEnabled] Specifies whether job run queuing is enabled for the job runs for this job. A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.
  /// [maintenanceWindow] Specifies the day of the week and hour for the maintenance window for streaming jobs.
  /// [maxCapacity] The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `number_of_workers` and `worker_type` arguments instead with `glue_version` `2.0` and above.
  /// [maxRetries] The maximum number of times to retry this job if it fails.
  /// [name] The name you assign to this job. It must be unique in your account.
  /// [nonOverridableArguments] Non-overridable arguments for this job, specified as name-value pairs.
  /// [notificationProperty] Notification property of the job. Defined below.
  /// [numberOfWorkers] The number of workers of a defined workerType that are allocated when a job runs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role associated with this job.
  /// [securityConfiguration] The name of the Security Configuration to be associated with the job.
  /// [sourceControlDetails] The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeout] The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  /// [workerType] The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  JobArgs({
    required JobCommand command,
    List<String>? connections,
    Map<String, String>? defaultArguments,
    String? description,
    String? executionClass,
    JobExecutionProperty? executionProperty,
    String? glueVersion,
    String? jobMode,
    bool? jobRunQueuingEnabled,
    String? maintenanceWindow,
    double? maxCapacity,
    int? maxRetries,
    String? name,
    Map<String, String>? nonOverridableArguments,
    JobNotificationProperty? notificationProperty,
    int? numberOfWorkers,
    String? region,
    required String roleArn,
    String? securityConfiguration,
    JobSourceControlDetails? sourceControlDetails,
    Map<String, String>? tags,
    int? timeout,
    String? workerType,
  }) : command = pulumi.Input.asInput<JobCommand>(command),
       connections = pulumi.Input.asOptionalInput<List<String>>(connections),
       defaultArguments = pulumi.Input.asOptionalInput<Map<String, String>>(
         defaultArguments,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       executionClass = pulumi.Input.asOptionalInput<String>(executionClass),
       executionProperty = pulumi.Input.asOptionalInput<JobExecutionProperty>(
         executionProperty,
       ),
       glueVersion = pulumi.Input.asOptionalInput<String>(glueVersion),
       jobMode = pulumi.Input.asOptionalInput<String>(jobMode),
       jobRunQueuingEnabled = pulumi.Input.asOptionalInput<bool>(
         jobRunQueuingEnabled,
       ),
       maintenanceWindow = pulumi.Input.asOptionalInput<String>(
         maintenanceWindow,
       ),
       maxCapacity = pulumi.Input.asOptionalInput<double>(maxCapacity),
       maxRetries = pulumi.Input.asOptionalInput<int>(maxRetries),
       name = pulumi.Input.asOptionalInput<String>(name),
       nonOverridableArguments = pulumi
           .Input.asOptionalInput<Map<String, String>>(nonOverridableArguments),
       notificationProperty =
           pulumi.Input.asOptionalInput<JobNotificationProperty>(
             notificationProperty,
           ),
       numberOfWorkers = pulumi.Input.asOptionalInput<int>(numberOfWorkers),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       securityConfiguration = pulumi.Input.asOptionalInput<String>(
         securityConfiguration,
       ),
       sourceControlDetails =
           pulumi.Input.asOptionalInput<JobSourceControlDetails>(
             sourceControlDetails,
           ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeout = pulumi.Input.asOptionalInput<int>(timeout),
       workerType = pulumi.Input.asOptionalInput<String>(workerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': pulumi.Input.mapInputValue<JobCommand, Map<String, dynamic>>(
        command,
        (value) => value.toMap(),
      ),
      'connections': ?connections,
      'defaultArguments': ?defaultArguments,
      'description': ?description,
      'executionClass': ?executionClass,
      'executionProperty':
          ?pulumi.Input.mapOptionalInputValue<
            JobExecutionProperty,
            Map<String, dynamic>
          >(executionProperty, (value) => value.toMap()),
      'glueVersion': ?glueVersion,
      'jobMode': ?jobMode,
      'jobRunQueuingEnabled': ?jobRunQueuingEnabled,
      'maintenanceWindow': ?maintenanceWindow,
      'maxCapacity': ?maxCapacity,
      'maxRetries': ?maxRetries,
      'name': ?name,
      'nonOverridableArguments': ?nonOverridableArguments,
      'notificationProperty':
          ?pulumi.Input.mapOptionalInputValue<
            JobNotificationProperty,
            Map<String, dynamic>
          >(notificationProperty, (value) => value.toMap()),
      'numberOfWorkers': ?numberOfWorkers,
      'region': ?region,
      'roleArn': roleArn,
      'securityConfiguration': ?securityConfiguration,
      'sourceControlDetails':
          ?pulumi.Input.mapOptionalInputValue<
            JobSourceControlDetails,
            Map<String, dynamic>
          >(sourceControlDetails, (value) => value.toMap()),
      'tags': ?tags,
      'timeout': ?timeout,
      'workerType': ?workerType,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      command: JobCommand.fromMap(
        (map['command'] as Map).cast<String, dynamic>(),
      ),
      connections: map['connections'] == null
          ? null
          : (map['connections'] as List).cast<String>(),
      defaultArguments: map['defaultArguments'] == null
          ? null
          : (map['defaultArguments'] as Map).cast<String, String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      executionClass: map['executionClass'] == null
          ? null
          : map['executionClass'] as String,
      executionProperty: map['executionProperty'] == null
          ? null
          : JobExecutionProperty.fromMap(
              (map['executionProperty'] as Map).cast<String, dynamic>(),
            ),
      glueVersion: map['glueVersion'] == null
          ? null
          : map['glueVersion'] as String,
      jobMode: map['jobMode'] == null ? null : map['jobMode'] as String,
      jobRunQueuingEnabled: map['jobRunQueuingEnabled'] == null
          ? null
          : map['jobRunQueuingEnabled'] as bool,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      maxCapacity: map['maxCapacity'] == null
          ? null
          : map['maxCapacity'] as double,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      nonOverridableArguments: map['nonOverridableArguments'] == null
          ? null
          : (map['nonOverridableArguments'] as Map).cast<String, String>(),
      notificationProperty: map['notificationProperty'] == null
          ? null
          : JobNotificationProperty.fromMap(
              (map['notificationProperty'] as Map).cast<String, dynamic>(),
            ),
      numberOfWorkers: map['numberOfWorkers'] == null
          ? null
          : map['numberOfWorkers'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      securityConfiguration: map['securityConfiguration'] == null
          ? null
          : map['securityConfiguration'] as String,
      sourceControlDetails: map['sourceControlDetails'] == null
          ? null
          : JobSourceControlDetails.fromMap(
              (map['sourceControlDetails'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      workerType: map['workerType'] == null
          ? null
          : map['workerType'] as String,
    );
  }
}
