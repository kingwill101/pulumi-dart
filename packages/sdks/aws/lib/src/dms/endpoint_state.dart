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

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// ARN for the certificate.
  final pulumi.Input<String>? certificateArn;
  /// Name of the endpoint database.
  final pulumi.Input<String>? databaseName;
  /// Configuration block for OpenSearch settings. See below.
  final pulumi.Input<EndpointElasticsearchSettings>? elasticsearchSettings;
  /// ARN for the endpoint.
  final pulumi.Input<String>? endpointArn;
  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final pulumi.Input<String>? endpointId;
  /// Type of endpoint. Valid values are `source`, `target`.
  final pulumi.Input<String>? endpointType;
  /// Type of engine for the endpoint. Valid values are `aurora`, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,`azuredb`, `azure-sql-managed-instance`, `babelfish`, `db2`, `db2-zos`, `docdb`, `dynamodb`, `elasticsearch`, `kafka`, `kinesis`, `mariadb`, `mongodb`, `mysql`, `opensearch`, `oracle`, `postgres`, `redshift`,`redshift-serverless`, `sqlserver`, `neptune` ,`sybase`. Please note that some of engine names are available only for `target` endpoint type (e.g. `redshift`).
  final pulumi.Input<String>? engineName;
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
  /// &gt; **Note:** You can specify one of two sets of values for these permissions. You can specify the values for this setting and `secrets_manager_arn`. Or you can specify clear-text values for `username`, `password` , `server_name`, and `port`. You can't specify both.
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// User name to be used to login to the endpoint database.
  final pulumi.Input<String>? username;

  /// Creates a new [EndpointState].
  /// [certificateArn] ARN for the certificate.
  /// [databaseName] Name of the endpoint database.
  /// [elasticsearchSettings] Configuration block for OpenSearch settings. See below.
  /// [endpointArn] ARN for the endpoint.
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
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [username] User name to be used to login to the endpoint database.
  const EndpointState({
    this.certificateArn,
    this.databaseName,
    this.elasticsearchSettings,
    this.endpointArn,
    this.endpointId,
    this.endpointType,
    this.engineName,
    this.extraConnectionAttributes,
    this.kafkaSettings,
    this.kinesisSettings,
    this.kmsKeyArn,
    this.mongodbSettings,
    this.mysqlSettings,
    this.oracleSettings,
    this.password,
    this.pauseReplicationTasks,
    this.port,
    this.postgresSettings,
    this.redisSettings,
    this.redshiftSettings,
    this.region,
    this.secretsManagerAccessRoleArn,
    this.secretsManagerArn,
    this.serverName,
    this.serviceAccessRole,
    this.sslMode,
    this.tags,
    this.tagsAll,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'elasticsearchSettings': ?pulumi.Input.mapOptionalInputValue<EndpointElasticsearchSettings, Map<String, dynamic>>(elasticsearchSettings, (value) => value.toMap()),
      'endpointArn': ?endpointArn,
      'endpointId': ?endpointId,
      'endpointType': ?endpointType,
      'engineName': ?engineName,
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
      'tagsAll': ?tagsAll,
      'username': ?username,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticsearchSettings: (() { final guardedValue = map['elasticsearchSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointElasticsearchSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointArn: (() { final guardedValue = map['endpointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineName: (() { final guardedValue = map['engineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraConnectionAttributes: (() { final guardedValue = map['extraConnectionAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaSettings: (() { final guardedValue = map['kafkaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointKafkaSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kinesisSettings: (() { final guardedValue = map['kinesisSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointKinesisSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongodbSettings: (() { final guardedValue = map['mongodbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointMongodbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlSettings: (() { final guardedValue = map['mysqlSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointMysqlSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleSettings: (() { final guardedValue = map['oracleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointOracleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pauseReplicationTasks: (() { final guardedValue = map['pauseReplicationTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      postgresSettings: (() { final guardedValue = map['postgresSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointPostgresSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisSettings: (() { final guardedValue = map['redisSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointRedisSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redshiftSettings: (() { final guardedValue = map['redshiftSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointRedshiftSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerAccessRoleArn: (() { final guardedValue = map['secretsManagerAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerArn: (() { final guardedValue = map['secretsManagerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccessRole: (() { final guardedValue = map['serviceAccessRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

