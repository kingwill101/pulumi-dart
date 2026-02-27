// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_command/job_command.dart';
import '../job_execution_property/job_execution_property.dart';
import '../job_notification_property/job_notification_property.dart';
import '../job_source_control_details/job_source_control_details.dart';

/// The set of arguments for Job.
class JobArgs {
  /// The command of the job. Defined below.
  final Input<JobCommand> command;

  /// The list of connections used for this job.
  final Input<List<String>>? connections;

  /// The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the [Calling AWS Glue APIs in Python](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html) topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the [Special Parameters Used by AWS Glue](http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-glue-arguments.html) topic in the developer guide.
  final Input<Map<String, String>>? defaultArguments;

  /// Description of the job.
  final Input<String>? description;

  /// Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: `FLEX`, `STANDARD`.
  final Input<String>? executionClass;

  /// Execution property of the job. Defined below.
  final Input<JobExecutionProperty>? executionProperty;

  /// The version of glue to use, for example "1.0". Ray jobs should set this to 4.0 or greater. For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  final Input<String>? glueVersion;

  /// Describes how a job was created. Valid values are `SCRIPT`, `NOTEBOOK` and `VISUAL`.
  final Input<String>? jobMode;

  /// Specifies whether job run queuing is enabled for the job runs for this job. A value of true means job run queuing is enabled for the job runs. If false or not populated, the job runs will not be considered for queueing.
  final Input<bool>? jobRunQueuingEnabled;

  /// Specifies the day of the week and hour for the maintenance window for streaming jobs.
  final Input<String>? maintenanceWindow;

  /// The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. `Required` when `pythonshell` is set, accept either `0.0625` or `1.0`. Use `number_of_workers` and `worker_type` arguments instead with `glue_version` `2.0` and above.
  final Input<double>? maxCapacity;

  /// The maximum number of times to retry this job if it fails.
  final Input<int>? maxRetries;

  /// The name you assign to this job. It must be unique in your account.
  final Input<String>? name;

  /// Non-overridable arguments for this job, specified as name-value pairs.
  final Input<Map<String, String>>? nonOverridableArguments;

  /// Notification property of the job. Defined below.
  final Input<JobNotificationProperty>? notificationProperty;

  /// The number of workers of a defined workerType that are allocated when a job runs.
  final Input<int>? numberOfWorkers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the IAM role associated with this job.
  final Input<String> roleArn;

  /// The name of the Security Configuration to be associated with the job.
  final Input<String>? securityConfiguration;

  /// The details for a source control configuration for a job, allowing synchronization of job artifacts to or from a remote repository. Defined below.
  final Input<JobSourceControlDetails>? sourceControlDetails;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The job timeout in minutes. The default is 2880 minutes (48 hours) for `glueetl` and `pythonshell` jobs, and 0 (unlimited) for `gluestreaming` jobs. Leave this attribute argumnet unconfigured for `glueray` jobs.
  final Input<int>? timeout;

  /// The type of predefined worker that is allocated when a job runs. Valid values: `Standard`, `G.1X`, `G.2X`, `G.025X`, `G.4X`, `G.8X`, `G.12X`, `G.16X`, `R.1X`, `R.2X`, `R.4X`, `R.8X`, `Z.2X` (Ray jobs). See the [AWS documentation](https://docs.aws.amazon.com/glue/latest/dg/worker-types.html) for details.
  final Input<String>? workerType;

  JobArgs({
    required this.command,
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
    required this.roleArn,
    this.securityConfiguration,
    this.sourceControlDetails,
    this.tags,
    this.timeout,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['command'] = Input.mapInputValue<JobCommand, Map<String, dynamic>>(
        command, (value) => value.toMap());
    final connectionsValue = connections;
    if (connectionsValue != null) {
      map['connections'] = connectionsValue;
    }
    final defaultArgumentsValue = defaultArguments;
    if (defaultArgumentsValue != null) {
      map['defaultArguments'] = defaultArgumentsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionClassValue = executionClass;
    if (executionClassValue != null) {
      map['executionClass'] = executionClassValue;
    }
    final executionPropertyValue = executionProperty;
    if (executionPropertyValue != null) {
      map['executionProperty'] = Input.mapOptionalInputValue<
              JobExecutionProperty, Map<String, dynamic>>(
          executionPropertyValue, (value) => value.toMap());
    }
    final glueVersionValue = glueVersion;
    if (glueVersionValue != null) {
      map['glueVersion'] = glueVersionValue;
    }
    final jobModeValue = jobMode;
    if (jobModeValue != null) {
      map['jobMode'] = jobModeValue;
    }
    final jobRunQueuingEnabledValue = jobRunQueuingEnabled;
    if (jobRunQueuingEnabledValue != null) {
      map['jobRunQueuingEnabled'] = jobRunQueuingEnabledValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nonOverridableArgumentsValue = nonOverridableArguments;
    if (nonOverridableArgumentsValue != null) {
      map['nonOverridableArguments'] = nonOverridableArgumentsValue;
    }
    final notificationPropertyValue = notificationProperty;
    if (notificationPropertyValue != null) {
      map['notificationProperty'] = Input.mapOptionalInputValue<
              JobNotificationProperty, Map<String, dynamic>>(
          notificationPropertyValue, (value) => value.toMap());
    }
    final numberOfWorkersValue = numberOfWorkers;
    if (numberOfWorkersValue != null) {
      map['numberOfWorkers'] = numberOfWorkersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final securityConfigurationValue = securityConfiguration;
    if (securityConfigurationValue != null) {
      map['securityConfiguration'] = securityConfigurationValue;
    }
    final sourceControlDetailsValue = sourceControlDetails;
    if (sourceControlDetailsValue != null) {
      map['sourceControlDetails'] = Input.mapOptionalInputValue<
              JobSourceControlDetails, Map<String, dynamic>>(
          sourceControlDetailsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final workerTypeValue = workerType;
    if (workerTypeValue != null) {
      map['workerType'] = workerTypeValue;
    }
    return map;
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      command: Input.asInput<JobCommand>(map['command']),
      connections: Input.asOptionalInput<List<String>>(map['connections']),
      defaultArguments:
          Input.asOptionalInput<Map<String, String>>(map['defaultArguments']),
      description: Input.asOptionalInput<String>(map['description']),
      executionClass: Input.asOptionalInput<String>(map['executionClass']),
      executionProperty:
          Input.asOptionalInput<JobExecutionProperty>(map['executionProperty']),
      glueVersion: Input.asOptionalInput<String>(map['glueVersion']),
      jobMode: Input.asOptionalInput<String>(map['jobMode']),
      jobRunQueuingEnabled:
          Input.asOptionalInput<bool>(map['jobRunQueuingEnabled']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      maxCapacity: Input.asOptionalInput<double>(map['maxCapacity']),
      maxRetries: Input.asOptionalInput<int>(map['maxRetries']),
      name: Input.asOptionalInput<String>(map['name']),
      nonOverridableArguments: Input.asOptionalInput<Map<String, String>>(
          map['nonOverridableArguments']),
      notificationProperty: Input.asOptionalInput<JobNotificationProperty>(
          map['notificationProperty']),
      numberOfWorkers: Input.asOptionalInput<int>(map['numberOfWorkers']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      securityConfiguration:
          Input.asOptionalInput<String>(map['securityConfiguration']),
      sourceControlDetails: Input.asOptionalInput<JobSourceControlDetails>(
          map['sourceControlDetails']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeout: Input.asOptionalInput<int>(map['timeout']),
      workerType: Input.asOptionalInput<String>(map['workerType']),
    );
  }
}
