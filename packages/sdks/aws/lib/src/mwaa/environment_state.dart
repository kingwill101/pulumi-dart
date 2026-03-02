// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_last_updated.dart';
import 'environment_logging_configuration.dart';
import 'environment_network_configuration.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  final pulumi.Input<Map<String, String>>? airflowConfigurationOptions;
  /// Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  final pulumi.Input<String>? airflowVersion;
  /// The ARN of the MWAA Environment
  final pulumi.Input<String>? arn;
  /// The Created At date of the MWAA Environment
  final pulumi.Input<String>? createdAt;
  /// The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  final pulumi.Input<String>? dagS3Path;
  /// The VPC endpoint for the environment's Amazon RDS database
  /// * `logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn` - Provides the ARN for the CloudWatch group where the logs will be published
  final pulumi.Input<String>? databaseVpcEndpointService;
  /// Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  final pulumi.Input<String>? endpointManagement;
  /// Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  final pulumi.Input<String>? environmentClass;
  /// The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  final pulumi.Input<String>? executionRoleArn;
  /// The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  final pulumi.Input<String>? kmsKey;
  final pulumi.Input<List<EnvironmentLastUpdated>>? lastUpdateds;
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
  final pulumi.Input<EnvironmentNetworkConfiguration>? networkConfiguration;
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
  /// The Service Role ARN of the Amazon MWAA Environment
  final pulumi.Input<String>? serviceRoleArn;
  /// The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  final pulumi.Input<String>? sourceBucketArn;
  /// The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  final pulumi.Input<String>? startupScriptS3ObjectVersion;
  /// The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  final pulumi.Input<String>? startupScriptS3Path;
  /// The status of the Amazon MWAA Environment
  final pulumi.Input<String>? status;
  /// A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  final pulumi.Input<String>? webserverAccessMode;
  /// The webserver URL of the MWAA Environment
  final pulumi.Input<String>? webserverUrl;
  /// The VPC endpoint for the environment's web server
  final pulumi.Input<String>? webserverVpcEndpointService;
  /// Specifies the start date for the weekly maintenance window.
  final pulumi.Input<String>? weeklyMaintenanceWindowStart;
  /// Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  final pulumi.Input<String>? workerReplacementStrategy;

  /// Creates a new [EnvironmentState].
  /// [airflowConfigurationOptions] The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  /// [airflowVersion] Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  /// [arn] The ARN of the MWAA Environment
  /// [createdAt] The Created At date of the MWAA Environment
  /// [dagS3Path] The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  /// [databaseVpcEndpointService] The VPC endpoint for the environment's Amazon RDS database
  /// [endpointManagement] Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  /// [environmentClass] Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  /// [kmsKey] The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  /// [lastUpdateds] Optional.
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
  /// [serviceRoleArn] The Service Role ARN of the Amazon MWAA Environment
  /// [sourceBucketArn] The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  /// [startupScriptS3ObjectVersion] The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  /// [startupScriptS3Path] The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  /// [status] The status of the Amazon MWAA Environment
  /// [tags] A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [webserverAccessMode] Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  /// [webserverUrl] The webserver URL of the MWAA Environment
  /// [webserverVpcEndpointService] The VPC endpoint for the environment's web server
  /// [weeklyMaintenanceWindowStart] Specifies the start date for the weekly maintenance window.
  /// [workerReplacementStrategy] Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  EnvironmentState({
    this.airflowConfigurationOptions,
    this.airflowVersion,
    this.arn,
    this.createdAt,
    this.dagS3Path,
    this.databaseVpcEndpointService,
    this.endpointManagement,
    this.environmentClass,
    this.executionRoleArn,
    this.kmsKey,
    this.lastUpdateds,
    this.loggingConfiguration,
    this.maxWebservers,
    this.maxWorkers,
    this.minWebservers,
    this.minWorkers,
    this.name,
    this.networkConfiguration,
    this.pluginsS3ObjectVersion,
    this.pluginsS3Path,
    this.region,
    this.requirementsS3ObjectVersion,
    this.requirementsS3Path,
    this.schedulers,
    this.serviceRoleArn,
    this.sourceBucketArn,
    this.startupScriptS3ObjectVersion,
    this.startupScriptS3Path,
    this.status,
    this.tags,
    this.tagsAll,
    this.webserverAccessMode,
    this.webserverUrl,
    this.webserverVpcEndpointService,
    this.weeklyMaintenanceWindowStart,
    this.workerReplacementStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowConfigurationOptions': ?airflowConfigurationOptions,
      'airflowVersion': ?airflowVersion,
      'arn': ?arn,
      'createdAt': ?createdAt,
      'dagS3Path': ?dagS3Path,
      'databaseVpcEndpointService': ?databaseVpcEndpointService,
      'endpointManagement': ?endpointManagement,
      'environmentClass': ?environmentClass,
      'executionRoleArn': ?executionRoleArn,
      'kmsKey': ?kmsKey,
      'lastUpdateds': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentLastUpdated>, List<Map<String, dynamic>>>(lastUpdateds, (value) => pulumi.Input.encodeList<EnvironmentLastUpdated, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<EnvironmentLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'maxWebservers': ?maxWebservers,
      'maxWorkers': ?maxWorkers,
      'minWebservers': ?minWebservers,
      'minWorkers': ?minWorkers,
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<EnvironmentNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'pluginsS3ObjectVersion': ?pluginsS3ObjectVersion,
      'pluginsS3Path': ?pluginsS3Path,
      'region': ?region,
      'requirementsS3ObjectVersion': ?requirementsS3ObjectVersion,
      'requirementsS3Path': ?requirementsS3Path,
      'schedulers': ?schedulers,
      'serviceRoleArn': ?serviceRoleArn,
      'sourceBucketArn': ?sourceBucketArn,
      'startupScriptS3ObjectVersion': ?startupScriptS3ObjectVersion,
      'startupScriptS3Path': ?startupScriptS3Path,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'webserverAccessMode': ?webserverAccessMode,
      'webserverUrl': ?webserverUrl,
      'webserverVpcEndpointService': ?webserverVpcEndpointService,
      'weeklyMaintenanceWindowStart': ?weeklyMaintenanceWindowStart,
      'workerReplacementStrategy': ?workerReplacementStrategy,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      airflowConfigurationOptions: map['airflowConfigurationOptions'] == null ? null : ((map['airflowConfigurationOptions'] as Map).cast<String, String>()).input(),
      airflowVersion: map['airflowVersion'] == null ? null : (map['airflowVersion'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      dagS3Path: map['dagS3Path'] == null ? null : (map['dagS3Path'] as String).input(),
      databaseVpcEndpointService: map['databaseVpcEndpointService'] == null ? null : (map['databaseVpcEndpointService'] as String).input(),
      endpointManagement: map['endpointManagement'] == null ? null : (map['endpointManagement'] as String).input(),
      environmentClass: map['environmentClass'] == null ? null : (map['environmentClass'] as String).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : (map['executionRoleArn'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      lastUpdateds: map['lastUpdateds'] == null ? null : (pulumi.Input.decodeList<EnvironmentLastUpdated>(map['lastUpdateds'], (value) => EnvironmentLastUpdated.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : (EnvironmentLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())).input(),
      maxWebservers: map['maxWebservers'] == null ? null : (map['maxWebservers'] as int).input(),
      maxWorkers: map['maxWorkers'] == null ? null : (map['maxWorkers'] as int).input(),
      minWebservers: map['minWebservers'] == null ? null : (map['minWebservers'] as int).input(),
      minWorkers: map['minWorkers'] == null ? null : (map['minWorkers'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (EnvironmentNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      pluginsS3ObjectVersion: map['pluginsS3ObjectVersion'] == null ? null : (map['pluginsS3ObjectVersion'] as String).input(),
      pluginsS3Path: map['pluginsS3Path'] == null ? null : (map['pluginsS3Path'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requirementsS3ObjectVersion: map['requirementsS3ObjectVersion'] == null ? null : (map['requirementsS3ObjectVersion'] as String).input(),
      requirementsS3Path: map['requirementsS3Path'] == null ? null : (map['requirementsS3Path'] as String).input(),
      schedulers: map['schedulers'] == null ? null : (map['schedulers'] as int).input(),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : (map['serviceRoleArn'] as String).input(),
      sourceBucketArn: map['sourceBucketArn'] == null ? null : (map['sourceBucketArn'] as String).input(),
      startupScriptS3ObjectVersion: map['startupScriptS3ObjectVersion'] == null ? null : (map['startupScriptS3ObjectVersion'] as String).input(),
      startupScriptS3Path: map['startupScriptS3Path'] == null ? null : (map['startupScriptS3Path'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      webserverAccessMode: map['webserverAccessMode'] == null ? null : (map['webserverAccessMode'] as String).input(),
      webserverUrl: map['webserverUrl'] == null ? null : (map['webserverUrl'] as String).input(),
      webserverVpcEndpointService: map['webserverVpcEndpointService'] == null ? null : (map['webserverVpcEndpointService'] as String).input(),
      weeklyMaintenanceWindowStart: map['weeklyMaintenanceWindowStart'] == null ? null : (map['weeklyMaintenanceWindowStart'] as String).input(),
      workerReplacementStrategy: map['workerReplacementStrategy'] == null ? null : (map['workerReplacementStrategy'] as String).input(),
    );
  }
}

