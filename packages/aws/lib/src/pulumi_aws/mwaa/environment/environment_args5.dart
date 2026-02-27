// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../environment_logging_configuration/environment_logging_configuration.dart';
import '../environment_network_configuration/environment_network_configuration.dart';

/// The set of arguments for Environment.
class EnvironmentArgs5 {
  /// The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  final Input<Map<String, String>>? airflowConfigurationOptions;

  /// Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  final Input<String>? airflowVersion;

  /// The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final Input<String> dagS3Path;

  /// Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  final Input<String>? endpointManagement;

  /// Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  final Input<String>? environmentClass;

  /// The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  final Input<String> executionRoleArn;

  /// The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  final Input<String>? kmsKey;

  /// The Apache Airflow logs you want to send to Amazon CloudWatch Logs. See `logging_configuration` Block for details.
  final Input<EnvironmentLoggingConfiguration>? loggingConfiguration;

  /// The maximum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  final Input<int>? maxWebservers;

  /// The maximum number of workers that can be automatically scaled up. Value need to be between `1` and `25`. Will be `10` by default.
  final Input<int>? maxWorkers;

  /// The minimum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  final Input<int>? minWebservers;

  /// The minimum number of workers that you want to run in your environment. Will be `1` by default.
  final Input<int>? minWorkers;

  /// The name of the Apache Airflow Environment
  final Input<String>? name;

  /// Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See `network_configuration` Block for details.
  final Input<EnvironmentNetworkConfiguration> networkConfiguration;

  /// The plugins.zip file version you want to use.
  final Input<String>? pluginsS3ObjectVersion;

  /// The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final Input<String>? pluginsS3Path;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The requirements.txt file version you want to use.
  final Input<String>? requirementsS3ObjectVersion;

  /// The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final Input<String>? requirementsS3Path;

  /// The number of schedulers that you want to run in your environment. v2.0.2 and above accepts `2` - `5`, default `2`. v1.10.12 accepts `1`.
  final Input<int>? schedulers;

  /// The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  final Input<String> sourceBucketArn;

  /// The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  final Input<String>? startupScriptS3ObjectVersion;

  /// The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  final Input<String>? startupScriptS3Path;

  /// A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  final Input<String>? webserverAccessMode;

  /// Specifies the start date for the weekly maintenance window.
  final Input<String>? weeklyMaintenanceWindowStart;

  /// Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  final Input<String>? workerReplacementStrategy;

  EnvironmentArgs5({
    this.airflowConfigurationOptions,
    this.airflowVersion,
    required this.dagS3Path,
    this.endpointManagement,
    this.environmentClass,
    required this.executionRoleArn,
    this.kmsKey,
    this.loggingConfiguration,
    this.maxWebservers,
    this.maxWorkers,
    this.minWebservers,
    this.minWorkers,
    this.name,
    required this.networkConfiguration,
    this.pluginsS3ObjectVersion,
    this.pluginsS3Path,
    this.region,
    this.requirementsS3ObjectVersion,
    this.requirementsS3Path,
    this.schedulers,
    required this.sourceBucketArn,
    this.startupScriptS3ObjectVersion,
    this.startupScriptS3Path,
    this.tags,
    this.webserverAccessMode,
    this.weeklyMaintenanceWindowStart,
    this.workerReplacementStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final airflowConfigurationOptionsValue = airflowConfigurationOptions;
    if (airflowConfigurationOptionsValue != null) {
      map['airflowConfigurationOptions'] = airflowConfigurationOptionsValue;
    }
    final airflowVersionValue = airflowVersion;
    if (airflowVersionValue != null) {
      map['airflowVersion'] = airflowVersionValue;
    }
    map['dagS3Path'] = dagS3Path;
    final endpointManagementValue = endpointManagement;
    if (endpointManagementValue != null) {
      map['endpointManagement'] = endpointManagementValue;
    }
    final environmentClassValue = environmentClass;
    if (environmentClassValue != null) {
      map['environmentClass'] = environmentClassValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = Input.mapOptionalInputValue<
              EnvironmentLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    final maxWebserversValue = maxWebservers;
    if (maxWebserversValue != null) {
      map['maxWebservers'] = maxWebserversValue;
    }
    final maxWorkersValue = maxWorkers;
    if (maxWorkersValue != null) {
      map['maxWorkers'] = maxWorkersValue;
    }
    final minWebserversValue = minWebservers;
    if (minWebserversValue != null) {
      map['minWebservers'] = minWebserversValue;
    }
    final minWorkersValue = minWorkers;
    if (minWorkersValue != null) {
      map['minWorkers'] = minWorkersValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfiguration'] = Input.mapInputValue<
        EnvironmentNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final pluginsS3ObjectVersionValue = pluginsS3ObjectVersion;
    if (pluginsS3ObjectVersionValue != null) {
      map['pluginsS3ObjectVersion'] = pluginsS3ObjectVersionValue;
    }
    final pluginsS3PathValue = pluginsS3Path;
    if (pluginsS3PathValue != null) {
      map['pluginsS3Path'] = pluginsS3PathValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requirementsS3ObjectVersionValue = requirementsS3ObjectVersion;
    if (requirementsS3ObjectVersionValue != null) {
      map['requirementsS3ObjectVersion'] = requirementsS3ObjectVersionValue;
    }
    final requirementsS3PathValue = requirementsS3Path;
    if (requirementsS3PathValue != null) {
      map['requirementsS3Path'] = requirementsS3PathValue;
    }
    final schedulersValue = schedulers;
    if (schedulersValue != null) {
      map['schedulers'] = schedulersValue;
    }
    map['sourceBucketArn'] = sourceBucketArn;
    final startupScriptS3ObjectVersionValue = startupScriptS3ObjectVersion;
    if (startupScriptS3ObjectVersionValue != null) {
      map['startupScriptS3ObjectVersion'] = startupScriptS3ObjectVersionValue;
    }
    final startupScriptS3PathValue = startupScriptS3Path;
    if (startupScriptS3PathValue != null) {
      map['startupScriptS3Path'] = startupScriptS3PathValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final webserverAccessModeValue = webserverAccessMode;
    if (webserverAccessModeValue != null) {
      map['webserverAccessMode'] = webserverAccessModeValue;
    }
    final weeklyMaintenanceWindowStartValue = weeklyMaintenanceWindowStart;
    if (weeklyMaintenanceWindowStartValue != null) {
      map['weeklyMaintenanceWindowStart'] = weeklyMaintenanceWindowStartValue;
    }
    final workerReplacementStrategyValue = workerReplacementStrategy;
    if (workerReplacementStrategyValue != null) {
      map['workerReplacementStrategy'] = workerReplacementStrategyValue;
    }
    return map;
  }

  factory EnvironmentArgs5.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs5(
      airflowConfigurationOptions: Input.asOptionalInput<Map<String, String>>(
          map['airflowConfigurationOptions']),
      airflowVersion: Input.asOptionalInput<String>(map['airflowVersion']),
      dagS3Path: Input.asInput<String>(map['dagS3Path']),
      endpointManagement:
          Input.asOptionalInput<String>(map['endpointManagement']),
      environmentClass: Input.asOptionalInput<String>(map['environmentClass']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      loggingConfiguration:
          Input.asOptionalInput<EnvironmentLoggingConfiguration>(
              map['loggingConfiguration']),
      maxWebservers: Input.asOptionalInput<int>(map['maxWebservers']),
      maxWorkers: Input.asOptionalInput<int>(map['maxWorkers']),
      minWebservers: Input.asOptionalInput<int>(map['minWebservers']),
      minWorkers: Input.asOptionalInput<int>(map['minWorkers']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfiguration: Input.asInput<EnvironmentNetworkConfiguration>(
          map['networkConfiguration']),
      pluginsS3ObjectVersion:
          Input.asOptionalInput<String>(map['pluginsS3ObjectVersion']),
      pluginsS3Path: Input.asOptionalInput<String>(map['pluginsS3Path']),
      region: Input.asOptionalInput<String>(map['region']),
      requirementsS3ObjectVersion:
          Input.asOptionalInput<String>(map['requirementsS3ObjectVersion']),
      requirementsS3Path:
          Input.asOptionalInput<String>(map['requirementsS3Path']),
      schedulers: Input.asOptionalInput<int>(map['schedulers']),
      sourceBucketArn: Input.asInput<String>(map['sourceBucketArn']),
      startupScriptS3ObjectVersion:
          Input.asOptionalInput<String>(map['startupScriptS3ObjectVersion']),
      startupScriptS3Path:
          Input.asOptionalInput<String>(map['startupScriptS3Path']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      webserverAccessMode:
          Input.asOptionalInput<String>(map['webserverAccessMode']),
      weeklyMaintenanceWindowStart:
          Input.asOptionalInput<String>(map['weeklyMaintenanceWindowStart']),
      workerReplacementStrategy:
          Input.asOptionalInput<String>(map['workerReplacementStrategy']),
    );
  }
}
