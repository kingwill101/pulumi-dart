// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_elasticsearch_settings/endpoint_elasticsearch_settings.dart';
import '../endpoint_kafka_settings/endpoint_kafka_settings.dart';
import '../endpoint_kinesis_settings/endpoint_kinesis_settings.dart';
import '../endpoint_mongodb_settings/endpoint_mongodb_settings.dart';
import '../endpoint_mysql_settings/endpoint_mysql_settings.dart';
import '../endpoint_oracle_settings/endpoint_oracle_settings.dart';
import '../endpoint_postgres_settings/endpoint_postgres_settings.dart';
import '../endpoint_redis_settings/endpoint_redis_settings.dart';
import '../endpoint_redshift_settings/endpoint_redshift_settings.dart';

/// The set of arguments for Endpoint.
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

  EndpointArgs({
    this.certificateArn,
    this.databaseName,
    this.elasticsearchSettings,
    required this.endpointId,
    required this.endpointType,
    required this.engineName,
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
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateArnValue = certificateArn;
    if (certificateArnValue != null) {
      map['certificateArn'] = certificateArnValue;
    }
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final elasticsearchSettingsValue = elasticsearchSettings;
    if (elasticsearchSettingsValue != null) {
      map['elasticsearchSettings'] = pulumi.Input.mapOptionalInputValue<
              EndpointElasticsearchSettings, Map<String, dynamic>>(
          elasticsearchSettingsValue, (value) => value.toMap());
    }
    map['endpointId'] = endpointId;
    map['endpointType'] = endpointType;
    map['engineName'] = engineName;
    final extraConnectionAttributesValue = extraConnectionAttributes;
    if (extraConnectionAttributesValue != null) {
      map['extraConnectionAttributes'] = extraConnectionAttributesValue;
    }
    final kafkaSettingsValue = kafkaSettings;
    if (kafkaSettingsValue != null) {
      map['kafkaSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointKafkaSettings,
          Map<String, dynamic>>(kafkaSettingsValue, (value) => value.toMap());
    }
    final kinesisSettingsValue = kinesisSettings;
    if (kinesisSettingsValue != null) {
      map['kinesisSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointKinesisSettings,
          Map<String, dynamic>>(kinesisSettingsValue, (value) => value.toMap());
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final mongodbSettingsValue = mongodbSettings;
    if (mongodbSettingsValue != null) {
      map['mongodbSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointMongodbSettings,
          Map<String, dynamic>>(mongodbSettingsValue, (value) => value.toMap());
    }
    final mysqlSettingsValue = mysqlSettings;
    if (mysqlSettingsValue != null) {
      map['mysqlSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointMysqlSettings,
          Map<String, dynamic>>(mysqlSettingsValue, (value) => value.toMap());
    }
    final oracleSettingsValue = oracleSettings;
    if (oracleSettingsValue != null) {
      map['oracleSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointOracleSettings,
          Map<String, dynamic>>(oracleSettingsValue, (value) => value.toMap());
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final pauseReplicationTasksValue = pauseReplicationTasks;
    if (pauseReplicationTasksValue != null) {
      map['pauseReplicationTasks'] = pauseReplicationTasksValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final postgresSettingsValue = postgresSettings;
    if (postgresSettingsValue != null) {
      map['postgresSettings'] = pulumi.Input.mapOptionalInputValue<
              EndpointPostgresSettings, Map<String, dynamic>>(
          postgresSettingsValue, (value) => value.toMap());
    }
    final redisSettingsValue = redisSettings;
    if (redisSettingsValue != null) {
      map['redisSettings'] = pulumi.Input.mapOptionalInputValue<
          EndpointRedisSettings,
          Map<String, dynamic>>(redisSettingsValue, (value) => value.toMap());
    }
    final redshiftSettingsValue = redshiftSettings;
    if (redshiftSettingsValue != null) {
      map['redshiftSettings'] = pulumi.Input.mapOptionalInputValue<
              EndpointRedshiftSettings, Map<String, dynamic>>(
          redshiftSettingsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretsManagerAccessRoleArnValue = secretsManagerAccessRoleArn;
    if (secretsManagerAccessRoleArnValue != null) {
      map['secretsManagerAccessRoleArn'] = secretsManagerAccessRoleArnValue;
    }
    final secretsManagerArnValue = secretsManagerArn;
    if (secretsManagerArnValue != null) {
      map['secretsManagerArn'] = secretsManagerArnValue;
    }
    final serverNameValue = serverName;
    if (serverNameValue != null) {
      map['serverName'] = serverNameValue;
    }
    final serviceAccessRoleValue = serviceAccessRole;
    if (serviceAccessRoleValue != null) {
      map['serviceAccessRole'] = serviceAccessRoleValue;
    }
    final sslModeValue = sslMode;
    if (sslModeValue != null) {
      map['sslMode'] = sslModeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      certificateArn:
          pulumi.Input.asOptionalInput<String>(map['certificateArn']),
      databaseName: pulumi.Input.asOptionalInput<String>(map['databaseName']),
      elasticsearchSettings:
          pulumi.Input.asOptionalInput<EndpointElasticsearchSettings>(
              map['elasticsearchSettings']),
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      endpointType: pulumi.Input.asInput<String>(map['endpointType']),
      engineName: pulumi.Input.asInput<String>(map['engineName']),
      extraConnectionAttributes: pulumi.Input.asOptionalInput<String>(
          map['extraConnectionAttributes']),
      kafkaSettings: pulumi.Input.asOptionalInput<EndpointKafkaSettings>(
          map['kafkaSettings']),
      kinesisSettings: pulumi.Input.asOptionalInput<EndpointKinesisSettings>(
          map['kinesisSettings']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      mongodbSettings: pulumi.Input.asOptionalInput<EndpointMongodbSettings>(
          map['mongodbSettings']),
      mysqlSettings: pulumi.Input.asOptionalInput<EndpointMysqlSettings>(
          map['mysqlSettings']),
      oracleSettings: pulumi.Input.asOptionalInput<EndpointOracleSettings>(
          map['oracleSettings']),
      password: pulumi.Input.asOptionalInput<String>(map['password']),
      pauseReplicationTasks:
          pulumi.Input.asOptionalInput<bool>(map['pauseReplicationTasks']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      postgresSettings: pulumi.Input.asOptionalInput<EndpointPostgresSettings>(
          map['postgresSettings']),
      redisSettings: pulumi.Input.asOptionalInput<EndpointRedisSettings>(
          map['redisSettings']),
      redshiftSettings: pulumi.Input.asOptionalInput<EndpointRedshiftSettings>(
          map['redshiftSettings']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretsManagerAccessRoleArn: pulumi.Input.asOptionalInput<String>(
          map['secretsManagerAccessRoleArn']),
      secretsManagerArn:
          pulumi.Input.asOptionalInput<String>(map['secretsManagerArn']),
      serverName: pulumi.Input.asOptionalInput<String>(map['serverName']),
      serviceAccessRole:
          pulumi.Input.asOptionalInput<String>(map['serviceAccessRole']),
      sslMode: pulumi.Input.asOptionalInput<String>(map['sslMode']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      username: pulumi.Input.asOptionalInput<String>(map['username']),
    );
  }
}
