// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_elasticsearch_settings.dart';
import 'endpoint_kafka_settings.dart';
import 'endpoint_kinesis_settings.dart';
import 'endpoint_mongodb_settings.dart';
import 'endpoint_mysql_settings.dart';
import 'endpoint_oracle_settings.dart';
import 'endpoint_postgres_settings.dart';
import 'endpoint_redis_settings.dart';
import 'endpoint_redshift_settings.dart';

/// {@template pulumi_dms_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_dms_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// ARN for the certificate.
  final pulumi.Input<String>? certificateArn;
  /// Name of the endpoint database.
  final pulumi.Input<String>? databaseName;
  /// Configuration block for OpenSearch settings. See below.
  final pulumi.Input<EndpointElasticsearchSettings>? elasticsearchSettings;
  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final pulumi.Input<String> endpointId;
  /// Type of endpoint. Valid values are `source`, `target`.
  final pulumi.Input<String> endpointType;
  /// Type of engine for the endpoint. Valid values are `aurora`, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,`azuredb`, `azure-sql-managed-instance`, `babelfish`, `db2`, `db2-zos`, `docdb`, `dynamodb`, `elasticsearch`, `kafka`, `kinesis`, `mariadb`, `mongodb`, `mysql`, `opensearch`, `oracle`, `postgres`, `redshift`,`redshift-serverless`, `sqlserver`, `neptune` ,`sybase`. Please note that some of engine names are available only for `target` endpoint type (e.g. `redshift`).
  final pulumi.Input<String> engineName;
  /// Additional attributes associated with the connection. For available attributes for a `source` Endpoint, see [Sources for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.html). For available attributes for a `target` Endpoint, see [Targets for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.html).
  final pulumi.Input<String>? extraConnectionAttributes;
  /// Configuration block for Kafka settings. See below.
  final pulumi.Input<EndpointKafkaSettings>? kafkaSettings;
  /// Configuration block for Kinesis settings. See below.
  final pulumi.Input<EndpointKinesisSettings>? kinesisSettings;
  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. When `engine_name` is `redshift`, `kms_key_arn` is the KMS Key for the Redshift target and the parameter `redshift_settings.server_side_encryption_kms_key_id` encrypts the S3 intermediate storage.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? kmsKeyArn;
  /// Configuration block for MongoDB settings. See below.
  final pulumi.Input<EndpointMongodbSettings>? mongodbSettings;
  /// Configuration block for MySQL settings. See below.
  final pulumi.Input<EndpointMysqlSettings>? mysqlSettings;
  /// Configuration block for Oracle settings. See below.
  final pulumi.Input<EndpointOracleSettings>? oracleSettings;
  /// Password to be used to login to the endpoint database.
  final pulumi.Input<String>? password;
  /// Whether to pause associated running replication tasks, regardless if they are managed by Terraform, prior to modifying the endpoint. Only tasks paused by the resource will be restarted after the modification completes. Default is `false`.
  final pulumi.Input<bool>? pauseReplicationTasks;
  /// Port used by the endpoint database.
  final pulumi.Input<int>? port;
  /// Configuration block for Postgres settings. See below.
  final pulumi.Input<EndpointPostgresSettings>? postgresSettings;
  final pulumi.Input<EndpointRedisSettings>? redisSettings;
  /// Configuration block for Redshift settings. See below.
  final pulumi.Input<EndpointRedshiftSettings>? redshiftSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in the Secrets Manager secret referred to by `secrets_manager_arn`. The role must allow the `iam:PassRole` action.
  ///
  /// > **Note:** You can specify one of two sets of values for these permissions. You can specify the values for this setting and `secrets_manager_arn`. Or you can specify clear-text values for `username`, `password` , `server_name`, and `port`. You can't specify both.
  final pulumi.Input<String>? secretsManagerAccessRoleArn;
  /// Full ARN, partial ARN, or friendly name of the Secrets Manager secret that contains the endpoint connection details. Supported only when `engine_name` is `aurora`, `aurora-postgresql`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, or `sqlserver`.
  final pulumi.Input<String>? secretsManagerArn;
  /// Host name of the server.
  final pulumi.Input<String>? serverName;
  /// ARN used by the service access IAM role for dynamodb endpoints.
  final pulumi.Input<String>? serviceAccessRole;
  /// SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`
  final pulumi.Input<String>? sslMode;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// User name to be used to login to the endpoint database.
  final pulumi.Input<String>? username;

  /// Creates a new [EndpointArgs].
  /// [certificateArn] ARN for the certificate.
  /// [databaseName] Name of the endpoint database.
  /// [elasticsearchSettings] Configuration block for OpenSearch settings. See below.
  /// [endpointId] Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  /// [endpointType] Type of endpoint. Valid values are `source`, `target`.
  /// [engineName] Type of engine for the endpoint. Valid values are `aurora`, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,`azuredb`, `azure-sql-managed-instance`, `babelfish`, `db2`, `db2-zos`, `docdb`, `dynamodb`, `elasticsearch`, `kafka`, `kinesis`, `mariadb`, `mongodb`, `mysql`, `opensearch`, `oracle`, `postgres`, `redshift`,`redshift-serverless`, `sqlserver`, `neptune` ,`sybase`. Please note that some of engine names are available only for `target` endpoint type (e.g. `redshift`).
  /// [extraConnectionAttributes] Additional attributes associated with the connection. For available attributes for a `source` Endpoint, see [Sources for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.html). For available attributes for a `target` Endpoint, see [Targets for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.html).
  /// [kafkaSettings] Configuration block for Kafka settings. See below.
  /// [kinesisSettings] Configuration block for Kinesis settings. See below.
  /// [kmsKeyArn] ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. When `engine_name` is `redshift`, `kms_key_arn` is the KMS Key for the Redshift target and the parameter `redshift_settings.server_side_encryption_kms_key_id` encrypts the S3 intermediate storage.
  /// [mongodbSettings] Configuration block for MongoDB settings. See below.
  /// [mysqlSettings] Configuration block for MySQL settings. See below.
  /// [oracleSettings] Configuration block for Oracle settings. See below.
  /// [password] Password to be used to login to the endpoint database.
  /// [pauseReplicationTasks] Whether to pause associated running replication tasks, regardless if they are managed by Terraform, prior to modifying the endpoint. Only tasks paused by the resource will be restarted after the modification completes. Default is `false`.
  /// [port] Port used by the endpoint database.
  /// [postgresSettings] Configuration block for Postgres settings. See below.
  /// [redisSettings] Optional.
  /// [redshiftSettings] Configuration block for Redshift settings. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretsManagerAccessRoleArn] ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in the Secrets Manager secret referred to by `secrets_manager_arn`. The role must allow the `iam:PassRole` action.
  /// [secretsManagerArn] Full ARN, partial ARN, or friendly name of the Secrets Manager secret that contains the endpoint connection details. Supported only when `engine_name` is `aurora`, `aurora-postgresql`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, or `sqlserver`.
  /// [serverName] Host name of the server.
  /// [serviceAccessRole] ARN used by the service access IAM role for dynamodb endpoints.
  /// [sslMode] SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [username] User name to be used to login to the endpoint database.
  EndpointArgs({
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? databaseName,
    pulumi.Output<EndpointElasticsearchSettings>? elasticsearchSettings,
    required pulumi.Output<String> endpointId,
    required pulumi.Output<String> endpointType,
    required pulumi.Output<String> engineName,
    pulumi.Output<String>? extraConnectionAttributes,
    pulumi.Output<EndpointKafkaSettings>? kafkaSettings,
    pulumi.Output<EndpointKinesisSettings>? kinesisSettings,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<EndpointMongodbSettings>? mongodbSettings,
    pulumi.Output<EndpointMysqlSettings>? mysqlSettings,
    pulumi.Output<EndpointOracleSettings>? oracleSettings,
    pulumi.Output<String>? password,
    pulumi.Output<bool>? pauseReplicationTasks,
    pulumi.Output<int>? port,
    pulumi.Output<EndpointPostgresSettings>? postgresSettings,
    pulumi.Output<EndpointRedisSettings>? redisSettings,
    pulumi.Output<EndpointRedshiftSettings>? redshiftSettings,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretsManagerAccessRoleArn,
    pulumi.Output<String>? secretsManagerArn,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? serviceAccessRole,
    pulumi.Output<String>? sslMode,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? username,
  }) :
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      elasticsearchSettings = pulumi.Input.asOptionalInput<EndpointElasticsearchSettings>(elasticsearchSettings),
      endpointId = pulumi.Input.asInput<String>(endpointId),
      endpointType = pulumi.Input.asInput<String>(endpointType),
      engineName = pulumi.Input.asInput<String>(engineName),
      extraConnectionAttributes = pulumi.Input.asOptionalInput<String>(extraConnectionAttributes),
      kafkaSettings = pulumi.Input.asOptionalInput<EndpointKafkaSettings>(kafkaSettings),
      kinesisSettings = pulumi.Input.asOptionalInput<EndpointKinesisSettings>(kinesisSettings),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      mongodbSettings = pulumi.Input.asOptionalInput<EndpointMongodbSettings>(mongodbSettings),
      mysqlSettings = pulumi.Input.asOptionalInput<EndpointMysqlSettings>(mysqlSettings),
      oracleSettings = pulumi.Input.asOptionalInput<EndpointOracleSettings>(oracleSettings),
      password = pulumi.Input.asOptionalInput<String>(password),
      pauseReplicationTasks = pulumi.Input.asOptionalInput<bool>(pauseReplicationTasks),
      port = pulumi.Input.asOptionalInput<int>(port),
      postgresSettings = pulumi.Input.asOptionalInput<EndpointPostgresSettings>(postgresSettings),
      redisSettings = pulumi.Input.asOptionalInput<EndpointRedisSettings>(redisSettings),
      redshiftSettings = pulumi.Input.asOptionalInput<EndpointRedshiftSettings>(redshiftSettings),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretsManagerAccessRoleArn = pulumi.Input.asOptionalInput<String>(secretsManagerAccessRoleArn),
      secretsManagerArn = pulumi.Input.asOptionalInput<String>(secretsManagerArn),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      serviceAccessRole = pulumi.Input.asOptionalInput<String>(serviceAccessRole),
      sslMode = pulumi.Input.asOptionalInput<String>(sslMode),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'elasticsearchSettings': ?pulumi.Input.mapOptionalInputValue<EndpointElasticsearchSettings, Map<String, dynamic>>(elasticsearchSettings, (value) => value.toMap()),
      'endpointId': endpointId,
      'endpointType': endpointType,
      'engineName': engineName,
      'extraConnectionAttributes': ?extraConnectionAttributes,
      'kafkaSettings': ?pulumi.Input.mapOptionalInputValue<EndpointKafkaSettings, Map<String, dynamic>>(kafkaSettings, (value) => value.toMap()),
      'kinesisSettings': ?pulumi.Input.mapOptionalInputValue<EndpointKinesisSettings, Map<String, dynamic>>(kinesisSettings, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'mongodbSettings': ?pulumi.Input.mapOptionalInputValue<EndpointMongodbSettings, Map<String, dynamic>>(mongodbSettings, (value) => value.toMap()),
      'mysqlSettings': ?pulumi.Input.mapOptionalInputValue<EndpointMysqlSettings, Map<String, dynamic>>(mysqlSettings, (value) => value.toMap()),
      'oracleSettings': ?pulumi.Input.mapOptionalInputValue<EndpointOracleSettings, Map<String, dynamic>>(oracleSettings, (value) => value.toMap()),
      'password': ?password,
      'pauseReplicationTasks': ?pauseReplicationTasks,
      'port': ?port,
      'postgresSettings': ?pulumi.Input.mapOptionalInputValue<EndpointPostgresSettings, Map<String, dynamic>>(postgresSettings, (value) => value.toMap()),
      'redisSettings': ?pulumi.Input.mapOptionalInputValue<EndpointRedisSettings, Map<String, dynamic>>(redisSettings, (value) => value.toMap()),
      'redshiftSettings': ?pulumi.Input.mapOptionalInputValue<EndpointRedshiftSettings, Map<String, dynamic>>(redshiftSettings, (value) => value.toMap()),
      'region': ?region,
      'secretsManagerAccessRoleArn': ?secretsManagerAccessRoleArn,
      'secretsManagerArn': ?secretsManagerArn,
      'serverName': ?serverName,
      'serviceAccessRole': ?serviceAccessRole,
      'sslMode': ?sslMode,
      'tags': ?tags,
      'username': ?username,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      elasticsearchSettings: map['elasticsearchSettings'] == null ? null : pulumi.Output.create<EndpointElasticsearchSettings>(EndpointElasticsearchSettings.fromMap((map['elasticsearchSettings'] as Map).cast<String, dynamic>())),
      endpointId: pulumi.Output.create<String>(map['endpointId'] as String),
      endpointType: pulumi.Output.create<String>(map['endpointType'] as String),
      engineName: pulumi.Output.create<String>(map['engineName'] as String),
      extraConnectionAttributes: map['extraConnectionAttributes'] == null ? null : pulumi.Output.create<String>(map['extraConnectionAttributes'] as String),
      kafkaSettings: map['kafkaSettings'] == null ? null : pulumi.Output.create<EndpointKafkaSettings>(EndpointKafkaSettings.fromMap((map['kafkaSettings'] as Map).cast<String, dynamic>())),
      kinesisSettings: map['kinesisSettings'] == null ? null : pulumi.Output.create<EndpointKinesisSettings>(EndpointKinesisSettings.fromMap((map['kinesisSettings'] as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      mongodbSettings: map['mongodbSettings'] == null ? null : pulumi.Output.create<EndpointMongodbSettings>(EndpointMongodbSettings.fromMap((map['mongodbSettings'] as Map).cast<String, dynamic>())),
      mysqlSettings: map['mysqlSettings'] == null ? null : pulumi.Output.create<EndpointMysqlSettings>(EndpointMysqlSettings.fromMap((map['mysqlSettings'] as Map).cast<String, dynamic>())),
      oracleSettings: map['oracleSettings'] == null ? null : pulumi.Output.create<EndpointOracleSettings>(EndpointOracleSettings.fromMap((map['oracleSettings'] as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      pauseReplicationTasks: map['pauseReplicationTasks'] == null ? null : pulumi.Output.create<bool>(map['pauseReplicationTasks'] as bool),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      postgresSettings: map['postgresSettings'] == null ? null : pulumi.Output.create<EndpointPostgresSettings>(EndpointPostgresSettings.fromMap((map['postgresSettings'] as Map).cast<String, dynamic>())),
      redisSettings: map['redisSettings'] == null ? null : pulumi.Output.create<EndpointRedisSettings>(EndpointRedisSettings.fromMap((map['redisSettings'] as Map).cast<String, dynamic>())),
      redshiftSettings: map['redshiftSettings'] == null ? null : pulumi.Output.create<EndpointRedshiftSettings>(EndpointRedshiftSettings.fromMap((map['redshiftSettings'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretsManagerAccessRoleArn: map['secretsManagerAccessRoleArn'] == null ? null : pulumi.Output.create<String>(map['secretsManagerAccessRoleArn'] as String),
      secretsManagerArn: map['secretsManagerArn'] == null ? null : pulumi.Output.create<String>(map['secretsManagerArn'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      serviceAccessRole: map['serviceAccessRole'] == null ? null : pulumi.Output.create<String>(map['serviceAccessRole'] as String),
      sslMode: map['sslMode'] == null ? null : pulumi.Output.create<String>(map['sslMode'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

