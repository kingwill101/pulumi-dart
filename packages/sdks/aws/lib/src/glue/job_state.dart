// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_command.dart';
import 'job_execution_property.dart';
import 'job_notification_property.dart';
import 'job_source_control_details.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// Amazon Resource Name (ARN) of Glue Job
  final pulumi.Input<String>? arn;
  /// The command of the job. Defined below.
  final pulumi.Input<JobCommand>? command;
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
  /// The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `numberOfWorkers` and `workerType` arguments instead with `glueVersion` `2.0` and above.
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
  final pulumi.Input<String>? roleArn;
  /// The name of the Security Configuration to be associated with the job.
  final pulumi.Input<String>? securityConfiguration;
  /// The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  final pulumi.Input<JobSourceControlDetails>? sourceControlDetails;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  final pulumi.Input<int>? timeout;
  /// The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  final pulumi.Input<String>? workerType;

  /// Creates a new [JobState].
  /// [arn] Amazon Resource Name (ARN) of Glue Job
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
  /// [maxCapacity] The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `numberOfWorkers` and `workerType` arguments instead with `glueVersion` `2.0` and above.
  /// [maxRetries] The maximum number of times to retry this job if it fails.
  /// [name] The name you assign to this job. It must be unique in your account.
  /// [nonOverridableArguments] Non-overridable arguments for this job, specified as name-value pairs.
  /// [notificationProperty] Notification property of the job. Defined below.
  /// [numberOfWorkers] The number of workers of a defined workerType that are allocated when a job runs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role associated with this job.
  /// [securityConfiguration] The name of the Security Configuration to be associated with the job.
  /// [sourceControlDetails] The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeout] The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  /// [workerType] The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  const JobState({
    this.arn,
    this.command,
    this.connections,
    this.defaultArguments,
    this.description,
    this.executionClass,
    this.executionProperty,
    this.glueVersion,
    this.jobMode,
    this.jobRunQueuingEnabled,
    this.maintenanceWindow,
    this.maxCapacity,
    this.maxRetries,
    this.name,
    this.nonOverridableArguments,
    this.notificationProperty,
    this.numberOfWorkers,
    this.region,
    this.roleArn,
    this.securityConfiguration,
    this.sourceControlDetails,
    this.tags,
    this.tagsAll,
    this.timeout,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'command': ?pulumi.Input.mapOptionalInputValue<JobCommand, Map<String, dynamic>>(command, (value) => value.toMap()),
      'connections': ?connections,
      'defaultArguments': ?defaultArguments,
      'description': ?description,
      'executionClass': ?executionClass,
      'executionProperty': ?pulumi.Input.mapOptionalInputValue<JobExecutionProperty, Map<String, dynamic>>(executionProperty, (value) => value.toMap()),
      'glueVersion': ?glueVersion,
      'jobMode': ?jobMode,
      'jobRunQueuingEnabled': ?jobRunQueuingEnabled,
      'maintenanceWindow': ?maintenanceWindow,
      'maxCapacity': ?maxCapacity,
      'maxRetries': ?maxRetries,
      'name': ?name,
      'nonOverridableArguments': ?nonOverridableArguments,
      'notificationProperty': ?pulumi.Input.mapOptionalInputValue<JobNotificationProperty, Map<String, dynamic>>(notificationProperty, (value) => value.toMap()),
      'numberOfWorkers': ?numberOfWorkers,
      'region': ?region,
      'roleArn': ?roleArn,
      'securityConfiguration': ?securityConfiguration,
      'sourceControlDetails': ?pulumi.Input.mapOptionalInputValue<JobSourceControlDetails, Map<String, dynamic>>(sourceControlDetails, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeout': ?timeout,
      'workerType': ?workerType,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobCommand.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultArguments: (() { final guardedValue = map['defaultArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionClass: (() { final guardedValue = map['executionClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionProperty: (() { final guardedValue = map['executionProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobExecutionProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      glueVersion: (() { final guardedValue = map['glueVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobMode: (() { final guardedValue = map['jobMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobRunQueuingEnabled: (() { final guardedValue = map['jobRunQueuingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonOverridableArguments: (() { final guardedValue = map['nonOverridableArguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      notificationProperty: (() { final guardedValue = map['notificationProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobNotificationProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityConfiguration: (() { final guardedValue = map['securityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceControlDetails: (() { final guardedValue = map['sourceControlDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobSourceControlDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
