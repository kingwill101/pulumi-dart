import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_last_updated/environment_last_updated.dart';
import '../environment_logging_configuration/environment_logging_configuration.dart';
import '../environment_network_configuration/environment_network_configuration.dart';
import 'environment_mwaa_args.dart';

/// Creates a MWAA Environment resource.
///
/// ## Example Usage
///
/// A MWAA Environment requires an IAM role (`aws.iam.Role`), two subnets in the private zone (`aws.ec2.Subnet`) and a versioned S3 bucket (`aws.s3.Bucket`).
///
/// ### Basic Usage
///
///
///
/// ### Example with Airflow configuration options
///
///
///
/// ### Example with logging configurations
///
/// Note that Airflow task logs are enabled by default with the `INFO` log level.
///
///
///
/// ### Example with tags
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MWAA Environment using `Name`. For example:
///
/// ```sh
/// $ pulumi import aws:mwaa/environment:Environment example MyAirflowEnvironment
/// ```
class EnvironmentMwaa extends pulumi.CustomResource {
  /// The `airflow_configuration_options` parameter specifies airflow override options. Check the [Official documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html#configuring-env-variables-reference) for all possible configuration options.
  late final pulumi.Output<Map<String, String>?> airflowConfigurationOptions;

  /// Airflow version of your environment, will be set by default to the latest version that MWAA supports.
  late final pulumi.Output<String> airflowVersion;

  /// The ARN of the MWAA Environment
  late final pulumi.Output<String> arn;

  /// The Created At date of the MWAA Environment
  late final pulumi.Output<String> createdAt;

  /// The relative path to the DAG folder on your Amazon S3 storage bucket. For example, dags. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  late final pulumi.Output<String> dagS3Path;

  /// The VPC endpoint for the environment's Amazon RDS database
  /// * `logging_configuration[0].<LOG_CONFIGURATION_TYPE>[0].cloud_watch_log_group_arn` - Provides the ARN for the CloudWatch group where the logs will be published
  late final pulumi.Output<String> databaseVpcEndpointService;

  /// Defines whether the VPC endpoints configured for the environment are created and managed by the customer or by AWS. If set to `SERVICE`, Amazon MWAA will create and manage the required VPC endpoints in your VPC. If set to `CUSTOMER`, you must create, and manage, the VPC endpoints for your VPC. Defaults to `SERVICE` if not set.
  late final pulumi.Output<String> endpointManagement;

  /// Environment class for the cluster. Possible options are `mw1.micro`, `mw1.small`, `mw1.medium`, `mw1.large`. Will be set by default to `mw1.small`. Please check the [AWS Pricing](https://aws.amazon.com/de/managed-workflows-for-apache-airflow/pricing/) for more information about the environment classes.
  late final pulumi.Output<String> environmentClass;

  /// The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume. Check the [official AWS documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html) for the detailed role specification.
  late final pulumi.Output<String> executionRoleArn;

  /// The Amazon Resource Name (ARN) of your KMS key that you want to use for encryption. Will be set to the ARN of the managed KMS key `aws/airflow` by default. Please check the [Official Documentation](https://docs.aws.amazon.com/mwaa/latest/userguide/custom-keys-certs.html) for more information.
  late final pulumi.Output<String?> kmsKey;
  late final pulumi.Output<List<EnvironmentLastUpdated>> lastUpdateds;

  /// The Apache Airflow logs you want to send to Amazon CloudWatch Logs. See `logging_configuration` Block for details.
  late final pulumi.Output<EnvironmentLoggingConfiguration>
      loggingConfiguration;

  /// The maximum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  late final pulumi.Output<int> maxWebservers;

  /// The maximum number of workers that can be automatically scaled up. Value need to be between `1` and `25`. Will be `10` by default.
  late final pulumi.Output<int> maxWorkers;

  /// The minimum number of web servers that you want to run in your environment. Value need to be between `2` and `5` if `environment_class` is not `mw1.micro`, `1` otherwise.
  late final pulumi.Output<int> minWebservers;

  /// The minimum number of workers that you want to run in your environment. Will be `1` by default.
  late final pulumi.Output<int> minWorkers;

  /// The name of the Apache Airflow Environment
  late final pulumi.Output<String> name;

  /// Specifies the network configuration for your Apache Airflow Environment. This includes two private subnets as well as security groups for the Airflow environment. Each subnet requires internet connection, otherwise the deployment will fail. See `network_configuration` Block for details.
  late final pulumi.Output<EnvironmentNetworkConfiguration>
      networkConfiguration;

  /// The plugins.zip file version you want to use.
  late final pulumi.Output<String> pluginsS3ObjectVersion;

  /// The relative path to the plugins.zip file on your Amazon S3 storage bucket. For example, plugins.zip. If a relative path is provided in the request, then plugins_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  late final pulumi.Output<String?> pluginsS3Path;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The requirements.txt file version you want to use.
  late final pulumi.Output<String> requirementsS3ObjectVersion;

  /// The relative path to the requirements.txt file on your Amazon S3 storage bucket. For example, requirements.txt. If a relative path is provided in the request, then requirements_s3_object_version is required. For more information, see [Importing DAGs on Amazon MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).
  late final pulumi.Output<String?> requirementsS3Path;

  /// The number of schedulers that you want to run in your environment. v2.0.2 and above accepts `2` - `5`, default `2`. v1.10.12 accepts `1`.
  late final pulumi.Output<int> schedulers;

  /// The Service Role ARN of the Amazon MWAA Environment
  late final pulumi.Output<String> serviceRoleArn;

  /// The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For example, arn:aws:s3:::airflow-mybucketname.
  late final pulumi.Output<String> sourceBucketArn;

  /// The version of the startup shell script you want to use. You must specify the version ID that Amazon S3 assigns to the file every time you update the script.
  late final pulumi.Output<String> startupScriptS3ObjectVersion;

  /// The relative path to the script hosted in your bucket. The script runs as your environment starts before starting the Apache Airflow process. Use this script to install dependencies, modify configuration options, and set environment variables. See [Using a startup script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html). Supported for environment versions 2.x and later.
  late final pulumi.Output<String?> startupScriptS3Path;

  /// The status of the Amazon MWAA Environment
  late final pulumi.Output<String> status;

  /// A map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies whether the webserver should be accessible over the internet or via your specified VPC. Possible options: `PRIVATE_ONLY` (default) and `PUBLIC_ONLY`.
  late final pulumi.Output<String> webserverAccessMode;

  /// The webserver URL of the MWAA Environment
  late final pulumi.Output<String> webserverUrl;

  /// The VPC endpoint for the environment's web server
  late final pulumi.Output<String> webserverVpcEndpointService;

  /// Specifies the start date for the weekly maintenance window.
  late final pulumi.Output<String> weeklyMaintenanceWindowStart;

  /// Worker replacement strategy. Valid values: `FORCED`, `GRACEFUL`.
  late final pulumi.Output<String> workerReplacementStrategy;

  EnvironmentMwaa(
    String name, {
    EnvironmentMwaaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mwaa/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.airflowConfigurationOptions =
        registerOutput<Map<String, String>?>('airflowConfigurationOptions');
    this.airflowVersion = registerOutput<String>('airflowVersion');
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.dagS3Path = registerOutput<String>('dagS3Path');
    this.databaseVpcEndpointService =
        registerOutput<String>('databaseVpcEndpointService');
    this.endpointManagement = registerOutput<String>('endpointManagement');
    this.environmentClass = registerOutput<String>('environmentClass');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.lastUpdateds =
        registerOutput<List<EnvironmentLastUpdated>>('lastUpdateds');
    this.loggingConfiguration =
        registerOutput<EnvironmentLoggingConfiguration>('loggingConfiguration');
    this.maxWebservers = registerOutput<int>('maxWebservers');
    this.maxWorkers = registerOutput<int>('maxWorkers');
    this.minWebservers = registerOutput<int>('minWebservers');
    this.minWorkers = registerOutput<int>('minWorkers');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<EnvironmentNetworkConfiguration>('networkConfiguration');
    this.pluginsS3ObjectVersion =
        registerOutput<String>('pluginsS3ObjectVersion');
    this.pluginsS3Path = registerOutput<String?>('pluginsS3Path');
    this.region = registerOutput<String>('region');
    this.requirementsS3ObjectVersion =
        registerOutput<String>('requirementsS3ObjectVersion');
    this.requirementsS3Path = registerOutput<String?>('requirementsS3Path');
    this.schedulers = registerOutput<int>('schedulers');
    this.serviceRoleArn = registerOutput<String>('serviceRoleArn');
    this.sourceBucketArn = registerOutput<String>('sourceBucketArn');
    this.startupScriptS3ObjectVersion =
        registerOutput<String>('startupScriptS3ObjectVersion');
    this.startupScriptS3Path = registerOutput<String?>('startupScriptS3Path');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.webserverAccessMode = registerOutput<String>('webserverAccessMode');
    this.webserverUrl = registerOutput<String>('webserverUrl');
    this.webserverVpcEndpointService =
        registerOutput<String>('webserverVpcEndpointService');
    this.weeklyMaintenanceWindowStart =
        registerOutput<String>('weeklyMaintenanceWindowStart');
    this.workerReplacementStrategy =
        registerOutput<String>('workerReplacementStrategy');
  }
}
