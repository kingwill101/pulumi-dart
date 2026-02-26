// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<String>? certificateArn;

  /// Name of the endpoint database.
  final Input<String>? databaseName;

  /// Configuration block for OpenSearch settings. See below.
  final Input<EndpointElasticsearchSettings>? elasticsearchSettings;

  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  final Input<String> endpointId;

  /// Type of endpoint. Valid values are <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span>.
  final Input<String> endpointType;

  /// Type of engine for the endpoint. Valid values are <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,<span pulumi-lang-nodejs="`azuredb`" pulumi-lang-dotnet="`Azuredb`" pulumi-lang-go="`azuredb`" pulumi-lang-python="`azuredb`" pulumi-lang-yaml="`azuredb`" pulumi-lang-java="`azuredb`">`azuredb`</span>, `azure-sql-managed-instance`, <span pulumi-lang-nodejs="`babelfish`" pulumi-lang-dotnet="`Babelfish`" pulumi-lang-go="`babelfish`" pulumi-lang-python="`babelfish`" pulumi-lang-yaml="`babelfish`" pulumi-lang-java="`babelfish`">`babelfish`</span>, <span pulumi-lang-nodejs="`db2`" pulumi-lang-dotnet="`Db2`" pulumi-lang-go="`db2`" pulumi-lang-python="`db2`" pulumi-lang-yaml="`db2`" pulumi-lang-java="`db2`">`db2`</span>, `db2-zos`, <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>, <span pulumi-lang-nodejs="`dynamodb`" pulumi-lang-dotnet="`Dynamodb`" pulumi-lang-go="`dynamodb`" pulumi-lang-python="`dynamodb`" pulumi-lang-yaml="`dynamodb`" pulumi-lang-java="`dynamodb`">`dynamodb`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`kafka`" pulumi-lang-dotnet="`Kafka`" pulumi-lang-go="`kafka`" pulumi-lang-python="`kafka`" pulumi-lang-yaml="`kafka`" pulumi-lang-java="`kafka`">`kafka`</span>, <span pulumi-lang-nodejs="`kinesis`" pulumi-lang-dotnet="`Kinesis`" pulumi-lang-go="`kinesis`" pulumi-lang-python="`kinesis`" pulumi-lang-yaml="`kinesis`" pulumi-lang-java="`kinesis`">`kinesis`</span>, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>, <span pulumi-lang-nodejs="`mongodb`" pulumi-lang-dotnet="`Mongodb`" pulumi-lang-go="`mongodb`" pulumi-lang-python="`mongodb`" pulumi-lang-yaml="`mongodb`" pulumi-lang-java="`mongodb`">`mongodb`</span>, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>, <span pulumi-lang-nodejs="`oracle`" pulumi-lang-dotnet="`Oracle`" pulumi-lang-go="`oracle`" pulumi-lang-python="`oracle`" pulumi-lang-yaml="`oracle`" pulumi-lang-java="`oracle`">`oracle`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>,`redshift-serverless`, <span pulumi-lang-nodejs="`sqlserver`" pulumi-lang-dotnet="`Sqlserver`" pulumi-lang-go="`sqlserver`" pulumi-lang-python="`sqlserver`" pulumi-lang-yaml="`sqlserver`" pulumi-lang-java="`sqlserver`">`sqlserver`</span>, <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span> ,<span pulumi-lang-nodejs="`sybase`" pulumi-lang-dotnet="`Sybase`" pulumi-lang-go="`sybase`" pulumi-lang-python="`sybase`" pulumi-lang-yaml="`sybase`" pulumi-lang-java="`sybase`">`sybase`</span>. Please note that some of engine names are available only for <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> endpoint type (e.g. <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>).
  final Input<String> engineName;

  /// Additional attributes associated with the connection. For available attributes for a <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> Endpoint, see [Sources for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.html). For available attributes for a <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> Endpoint, see [Targets for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.html).
  final Input<String>? extraConnectionAttributes;

  /// Configuration block for Kafka settings. See below.
  final Input<EndpointKafkaSettings>? kafkaSettings;

  /// Configuration block for Kinesis settings. See below.
  final Input<EndpointKinesisSettings>? kinesisSettings;

  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. When <span pulumi-lang-nodejs="`engineName`" pulumi-lang-dotnet="`EngineName`" pulumi-lang-go="`engineName`" pulumi-lang-python="`engine_name`" pulumi-lang-yaml="`engineName`" pulumi-lang-java="`engineName`">`engine_name`</span> is <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span> is the KMS Key for the Redshift target and the parameter `redshift_settings.server_side_encryption_kms_key_id` encrypts the S3 intermediate storage.
  ///
  /// The following arguments are optional:
  final Input<String>? kmsKeyArn;

  /// Configuration block for MongoDB settings. See below.
  final Input<EndpointMongodbSettings>? mongodbSettings;

  /// Configuration block for MySQL settings. See below.
  final Input<EndpointMysqlSettings>? mysqlSettings;

  /// Configuration block for Oracle settings. See below.
  final Input<EndpointOracleSettings>? oracleSettings;

  /// Password to be used to login to the endpoint database.
  final Input<String>? password;

  /// Whether to pause associated running replication tasks, regardless if they are managed by Terraform, prior to modifying the endpoint. Only tasks paused by the resource will be restarted after the modification completes. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? pauseReplicationTasks;

  /// Port used by the endpoint database.
  final Input<int>? port;

  /// Configuration block for Postgres settings. See below.
  final Input<EndpointPostgresSettings>? postgresSettings;
  final Input<EndpointRedisSettings>? redisSettings;

  /// Configuration block for Redshift settings. See below.
  final Input<EndpointRedshiftSettings>? redshiftSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in the Secrets Manager secret referred to by <span pulumi-lang-nodejs="`secretsManagerArn`" pulumi-lang-dotnet="`SecretsManagerArn`" pulumi-lang-go="`secretsManagerArn`" pulumi-lang-python="`secrets_manager_arn`" pulumi-lang-yaml="`secretsManagerArn`" pulumi-lang-java="`secretsManagerArn`">`secrets_manager_arn`</span>. The role must allow the `iam:PassRole` action.
  ///
  /// > **Note:** You can specify one of two sets of values for these permissions. You can specify the values for this setting and <span pulumi-lang-nodejs="`secretsManagerArn`" pulumi-lang-dotnet="`SecretsManagerArn`" pulumi-lang-go="`secretsManagerArn`" pulumi-lang-python="`secrets_manager_arn`" pulumi-lang-yaml="`secretsManagerArn`" pulumi-lang-java="`secretsManagerArn`">`secrets_manager_arn`</span>. Or you can specify clear-text values for <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> , <span pulumi-lang-nodejs="`serverName`" pulumi-lang-dotnet="`ServerName`" pulumi-lang-go="`serverName`" pulumi-lang-python="`server_name`" pulumi-lang-yaml="`serverName`" pulumi-lang-java="`serverName`">`server_name`</span>, and <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>. You can't specify both.
  final Input<String>? secretsManagerAccessRoleArn;

  /// Full ARN, partial ARN, or friendly name of the Secrets Manager secret that contains the endpoint connection details. Supported only when <span pulumi-lang-nodejs="`engineName`" pulumi-lang-dotnet="`EngineName`" pulumi-lang-go="`engineName`" pulumi-lang-python="`engine_name`" pulumi-lang-yaml="`engineName`" pulumi-lang-java="`engineName`">`engine_name`</span> is <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-postgresql`, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>, <span pulumi-lang-nodejs="`mongodb`" pulumi-lang-dotnet="`Mongodb`" pulumi-lang-go="`mongodb`" pulumi-lang-python="`mongodb`" pulumi-lang-yaml="`mongodb`" pulumi-lang-java="`mongodb`">`mongodb`</span>, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`oracle`" pulumi-lang-dotnet="`Oracle`" pulumi-lang-go="`oracle`" pulumi-lang-python="`oracle`" pulumi-lang-yaml="`oracle`" pulumi-lang-java="`oracle`">`oracle`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, or <span pulumi-lang-nodejs="`sqlserver`" pulumi-lang-dotnet="`Sqlserver`" pulumi-lang-go="`sqlserver`" pulumi-lang-python="`sqlserver`" pulumi-lang-yaml="`sqlserver`" pulumi-lang-java="`sqlserver`">`sqlserver`</span>.
  final Input<String>? secretsManagerArn;

  /// Host name of the server.
  final Input<String>? serverName;

  /// ARN used by the service access IAM role for dynamodb endpoints.
  final Input<String>? serviceAccessRole;

  /// SSL mode to use for the connection. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`require`" pulumi-lang-dotnet="`Require`" pulumi-lang-go="`require`" pulumi-lang-python="`require`" pulumi-lang-yaml="`require`" pulumi-lang-java="`require`">`require`</span>, `verify-ca`, `verify-full`
  final Input<String>? sslMode;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// User name to be used to login to the endpoint database.
  final Input<String>? username;

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
      map['elasticsearchSettings'] = Input.mapOptionalInputValue<
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
      map['kafkaSettings'] = Input.mapOptionalInputValue<EndpointKafkaSettings,
          Map<String, dynamic>>(kafkaSettingsValue, (value) => value.toMap());
    }
    final kinesisSettingsValue = kinesisSettings;
    if (kinesisSettingsValue != null) {
      map['kinesisSettings'] = Input.mapOptionalInputValue<
          EndpointKinesisSettings,
          Map<String, dynamic>>(kinesisSettingsValue, (value) => value.toMap());
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final mongodbSettingsValue = mongodbSettings;
    if (mongodbSettingsValue != null) {
      map['mongodbSettings'] = Input.mapOptionalInputValue<
          EndpointMongodbSettings,
          Map<String, dynamic>>(mongodbSettingsValue, (value) => value.toMap());
    }
    final mysqlSettingsValue = mysqlSettings;
    if (mysqlSettingsValue != null) {
      map['mysqlSettings'] = Input.mapOptionalInputValue<EndpointMysqlSettings,
          Map<String, dynamic>>(mysqlSettingsValue, (value) => value.toMap());
    }
    final oracleSettingsValue = oracleSettings;
    if (oracleSettingsValue != null) {
      map['oracleSettings'] = Input.mapOptionalInputValue<
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
      map['postgresSettings'] = Input.mapOptionalInputValue<
              EndpointPostgresSettings, Map<String, dynamic>>(
          postgresSettingsValue, (value) => value.toMap());
    }
    final redisSettingsValue = redisSettings;
    if (redisSettingsValue != null) {
      map['redisSettings'] = Input.mapOptionalInputValue<EndpointRedisSettings,
          Map<String, dynamic>>(redisSettingsValue, (value) => value.toMap());
    }
    final redshiftSettingsValue = redshiftSettings;
    if (redshiftSettingsValue != null) {
      map['redshiftSettings'] = Input.mapOptionalInputValue<
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
      certificateArn: Input.asOptionalInput<String>(map['certificateArn']),
      databaseName: Input.asOptionalInput<String>(map['databaseName']),
      elasticsearchSettings:
          Input.asOptionalInput<EndpointElasticsearchSettings>(
              map['elasticsearchSettings']),
      endpointId: Input.asInput<String>(map['endpointId']),
      endpointType: Input.asInput<String>(map['endpointType']),
      engineName: Input.asInput<String>(map['engineName']),
      extraConnectionAttributes:
          Input.asOptionalInput<String>(map['extraConnectionAttributes']),
      kafkaSettings:
          Input.asOptionalInput<EndpointKafkaSettings>(map['kafkaSettings']),
      kinesisSettings: Input.asOptionalInput<EndpointKinesisSettings>(
          map['kinesisSettings']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      mongodbSettings: Input.asOptionalInput<EndpointMongodbSettings>(
          map['mongodbSettings']),
      mysqlSettings:
          Input.asOptionalInput<EndpointMysqlSettings>(map['mysqlSettings']),
      oracleSettings:
          Input.asOptionalInput<EndpointOracleSettings>(map['oracleSettings']),
      password: Input.asOptionalInput<String>(map['password']),
      pauseReplicationTasks:
          Input.asOptionalInput<bool>(map['pauseReplicationTasks']),
      port: Input.asOptionalInput<int>(map['port']),
      postgresSettings: Input.asOptionalInput<EndpointPostgresSettings>(
          map['postgresSettings']),
      redisSettings:
          Input.asOptionalInput<EndpointRedisSettings>(map['redisSettings']),
      redshiftSettings: Input.asOptionalInput<EndpointRedshiftSettings>(
          map['redshiftSettings']),
      region: Input.asOptionalInput<String>(map['region']),
      secretsManagerAccessRoleArn:
          Input.asOptionalInput<String>(map['secretsManagerAccessRoleArn']),
      secretsManagerArn:
          Input.asOptionalInput<String>(map['secretsManagerArn']),
      serverName: Input.asOptionalInput<String>(map['serverName']),
      serviceAccessRole:
          Input.asOptionalInput<String>(map['serviceAccessRole']),
      sslMode: Input.asOptionalInput<String>(map['sslMode']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      username: Input.asOptionalInput<String>(map['username']),
    );
  }
}
