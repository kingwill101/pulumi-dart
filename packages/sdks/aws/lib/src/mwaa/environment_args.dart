// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_logging_configuration.dart';
import 'environment_network_configuration.dart';

/// {@template pulumi_mwaa_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_mwaa_environment_environment_args_doc}
class EnvironmentArgs {
  /// The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  final pulumi.Input<Map<String, String>>? airflowConfigurationOptions;
  /// Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  final pulumi.Input<String>? airflowVersion;
  /// The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final pulumi.Input<String> dagS3Path;
  /// Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  final pulumi.Input<String>? endpointManagement;
  /// Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  final pulumi.Input<String>? environmentClass;
  /// The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  final pulumi.Input<String> executionRoleArn;
  /// The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  final pulumi.Input<String>? kmsKey;
  /// The Apache Airflow logs you want to send to Amazon CloudWatch Logs. See `logging_configuration` Block for details.
  final pulumi.Input<EnvironmentLoggingConfiguration>? loggingConfiguration;
  /// The maximum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  final pulumi.Input<int>? maxWebservers;
  /// The maximum number of workers that can be automatically scaled up. Value need to be between `1` and `25`. Will be `10` by default.
  final pulumi.Input<int>? maxWorkers;
  /// The minimum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  final pulumi.Input<int>? minWebservers;
  /// The minimum number of workers that you want to run in your environment. Will be `1` by default.
  final pulumi.Input<int>? minWorkers;
  /// The name of the Apache Airflow Environment
  final pulumi.Input<String>? name;
  /// Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See `network_configuration` Block for details.
  final pulumi.Input<EnvironmentNetworkConfiguration> networkConfiguration;
  /// The plugins.zip file version you want to use.
  final pulumi.Input<String>? pluginsS3ObjectVersion;
  /// The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final pulumi.Input<String>? pluginsS3Path;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The requirements.txt file version you want to use.
  final pulumi.Input<String>? requirementsS3ObjectVersion;
  /// The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final pulumi.Input<String>? requirementsS3Path;
  /// The number of schedulers that you want to run in your environment. v2.0.2 and above accepts `2` - `5`, default `2`. v1.10.12 accepts `1`.
  final pulumi.Input<int>? schedulers;
  /// The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  final pulumi.Input<String> sourceBucketArn;
  /// The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  final pulumi.Input<String>? startupScriptS3ObjectVersion;
  /// The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  final pulumi.Input<String>? startupScriptS3Path;
  /// A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  final pulumi.Input<String>? webserverAccessMode;
  /// Specifies the start date for the weekly maintenance window.
  final pulumi.Input<String>? weeklyMaintenanceWindowStart;
  /// Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  final pulumi.Input<String>? workerReplacementStrategy;

  /// Creates a new [EnvironmentArgs].
  /// [airflowConfigurationOptions] The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  /// [airflowVersion] Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  /// [dagS3Path] The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  /// [endpointManagement] Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  /// [environmentClass] Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  /// [kmsKey] The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  /// [loggingConfiguration] The Apache Airflow logs you want to send to Amazon CloudWatch Logs. See `logging_configuration` Block for details.
  /// [maxWebservers] The maximum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  /// [maxWorkers] The maximum number of workers that can be automatically scaled up. Value need to be between `1` and `25`. Will be `10` by default.
  /// [minWebservers] The minimum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  /// [minWorkers] The minimum number of workers that you want to run in your environment. Will be `1` by default.
  /// [name] The name of the Apache Airflow Environment
  /// [networkConfiguration] Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See `network_configuration` Block for details.
  /// [pluginsS3ObjectVersion] The plugins.zip file version you want to use.
  /// [pluginsS3Path] The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requirementsS3ObjectVersion] The requirements.txt file version you want to use.
  /// [requirementsS3Path] The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  /// [schedulers] The number of schedulers that you want to run in your environment. v2.0.2 and above accepts `2` - `5`, default `2`. v1.10.12 accepts `1`.
  /// [sourceBucketArn] The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  /// [startupScriptS3ObjectVersion] The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  /// [startupScriptS3Path] The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  /// [tags] A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [webserverAccessMode] Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  /// [weeklyMaintenanceWindowStart] Specifies the start date for the weekly maintenance window.
  /// [workerReplacementStrategy] Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  const EnvironmentArgs({
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
    return <String, dynamic>{
      'airflowConfigurationOptions': ?airflowConfigurationOptions,
      'airflowVersion': ?airflowVersion,
      'dagS3Path': dagS3Path,
      'endpointManagement': ?endpointManagement,
      'environmentClass': ?environmentClass,
      'executionRoleArn': executionRoleArn,
      'kmsKey': ?kmsKey,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'maxWebservers': ?maxWebservers,
      'maxWorkers': ?maxWorkers,
      'minWebservers': ?minWebservers,
      'minWorkers': ?minWorkers,
      'name': ?name,
      'networkConfiguration': pulumi.Input.mapInputValue<EnvironmentNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'pluginsS3ObjectVersion': ?pluginsS3ObjectVersion,
      'pluginsS3Path': ?pluginsS3Path,
      'region': ?region,
      'requirementsS3ObjectVersion': ?requirementsS3ObjectVersion,
      'requirementsS3Path': ?requirementsS3Path,
      'schedulers': ?schedulers,
      'sourceBucketArn': sourceBucketArn,
      'startupScriptS3ObjectVersion': ?startupScriptS3ObjectVersion,
      'startupScriptS3Path': ?startupScriptS3Path,
      'tags': ?tags,
      'webserverAccessMode': ?webserverAccessMode,
      'weeklyMaintenanceWindowStart': ?weeklyMaintenanceWindowStart,
      'workerReplacementStrategy': ?workerReplacementStrategy,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      airflowConfigurationOptions: (() { final guardedValue = map['airflowConfigurationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      airflowVersion: (() { final guardedValue = map['airflowVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dagS3Path: pulumi.Input.fromValue(map['dagS3Path'] as String),
      endpointManagement: (() { final guardedValue = map['endpointManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentClass: (() { final guardedValue = map['environmentClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfiguration: (() { final guardedValue = map['loggingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxWebservers: (() { final guardedValue = map['maxWebservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxWorkers: (() { final guardedValue = map['maxWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minWebservers: (() { final guardedValue = map['minWebservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minWorkers: (() { final guardedValue = map['minWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: pulumi.Input.fromValue(EnvironmentNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())),
      pluginsS3ObjectVersion: (() { final guardedValue = map['pluginsS3ObjectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginsS3Path: (() { final guardedValue = map['pluginsS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementsS3ObjectVersion: (() { final guardedValue = map['requirementsS3ObjectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementsS3Path: (() { final guardedValue = map['requirementsS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulers: (() { final guardedValue = map['schedulers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceBucketArn: pulumi.Input.fromValue(map['sourceBucketArn'] as String),
      startupScriptS3ObjectVersion: (() { final guardedValue = map['startupScriptS3ObjectVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startupScriptS3Path: (() { final guardedValue = map['startupScriptS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webserverAccessMode: (() { final guardedValue = map['webserverAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceWindowStart: (() { final guardedValue = map['weeklyMaintenanceWindowStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerReplacementStrategy: (() { final guardedValue = map['workerReplacementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

