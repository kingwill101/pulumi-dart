// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_elasticsearch_setting.dart';
import 'get_endpoint_kafka_setting.dart';
import 'get_endpoint_kinesis_setting.dart';
import 'get_endpoint_mongodb_setting.dart';
import 'get_endpoint_mysql_setting.dart';
import 'get_endpoint_postgres_setting.dart';
import 'get_endpoint_redis_setting.dart';
import 'get_endpoint_redshift_setting.dart';
import 'get_endpoint_s3_setting.dart';

/// Result data returned by getEndpoint.
class GetEndpointResult {
  final String certificateArn;
  final String databaseName;
  final List<GetEndpointElasticsearchSetting> elasticsearchSettings;
  final String endpointArn;
  final String endpointId;
  final String endpointType;
  final String engineName;
  final String extraConnectionAttributes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetEndpointKafkaSetting> kafkaSettings;
  final List<GetEndpointKinesisSetting> kinesisSettings;
  final String kmsKeyArn;
  final List<GetEndpointMongodbSetting> mongodbSettings;
  final List<GetEndpointMysqlSetting> mysqlSettings;
  final String password;
  final int port;
  final List<GetEndpointPostgresSetting> postgresSettings;
  final List<GetEndpointRedisSetting> redisSettings;
  final List<GetEndpointRedshiftSetting> redshiftSettings;
  final String region;
  final List<GetEndpointS3Setting> s3Settings;
  final String secretsManagerAccessRoleArn;
  final String secretsManagerArn;
  final String serverName;
  final String serviceAccessRole;
  final String sslMode;
  final Map<String, String> tags;
  final String username;

  /// Creates a new [GetEndpointResult].
  /// [certificateArn] Required.
  /// [databaseName] Required.
  /// [elasticsearchSettings] Required.
  /// [endpointArn] Required.
  /// [endpointId] Required.
  /// [endpointType] Required.
  /// [engineName] Required.
  /// [extraConnectionAttributes] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaSettings] Required.
  /// [kinesisSettings] Required.
  /// [kmsKeyArn] Required.
  /// [mongodbSettings] Required.
  /// [mysqlSettings] Required.
  /// [password] Required.
  /// [port] Required.
  /// [postgresSettings] Required.
  /// [redisSettings] Required.
  /// [redshiftSettings] Required.
  /// [region] Required.
  /// [s3Settings] Required.
  /// [secretsManagerAccessRoleArn] Required.
  /// [secretsManagerArn] Required.
  /// [serverName] Required.
  /// [serviceAccessRole] Required.
  /// [sslMode] Required.
  /// [tags] Required.
  /// [username] Required.
  GetEndpointResult({
    required this.certificateArn,
    required this.databaseName,
    required this.elasticsearchSettings,
    required this.endpointArn,
    required this.endpointId,
    required this.endpointType,
    required this.engineName,
    required this.extraConnectionAttributes,
    required this.id,
    required this.kafkaSettings,
    required this.kinesisSettings,
    required this.kmsKeyArn,
    required this.mongodbSettings,
    required this.mysqlSettings,
    required this.password,
    required this.port,
    required this.postgresSettings,
    required this.redisSettings,
    required this.redshiftSettings,
    required this.region,
    required this.s3Settings,
    required this.secretsManagerAccessRoleArn,
    required this.secretsManagerArn,
    required this.serverName,
    required this.serviceAccessRole,
    required this.sslMode,
    required this.tags,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
      'databaseName': databaseName,
      'elasticsearchSettings': pulumi.Input.encodeList<GetEndpointElasticsearchSetting, Map<String, dynamic>>(elasticsearchSettings, (value) => value.toMap()),
      'endpointArn': endpointArn,
      'endpointId': endpointId,
      'endpointType': endpointType,
      'engineName': engineName,
      'extraConnectionAttributes': extraConnectionAttributes,
      'id': id,
      'kafkaSettings': pulumi.Input.encodeList<GetEndpointKafkaSetting, Map<String, dynamic>>(kafkaSettings, (value) => value.toMap()),
      'kinesisSettings': pulumi.Input.encodeList<GetEndpointKinesisSetting, Map<String, dynamic>>(kinesisSettings, (value) => value.toMap()),
      'kmsKeyArn': kmsKeyArn,
      'mongodbSettings': pulumi.Input.encodeList<GetEndpointMongodbSetting, Map<String, dynamic>>(mongodbSettings, (value) => value.toMap()),
      'mysqlSettings': pulumi.Input.encodeList<GetEndpointMysqlSetting, Map<String, dynamic>>(mysqlSettings, (value) => value.toMap()),
      'password': password,
      'port': port,
      'postgresSettings': pulumi.Input.encodeList<GetEndpointPostgresSetting, Map<String, dynamic>>(postgresSettings, (value) => value.toMap()),
      'redisSettings': pulumi.Input.encodeList<GetEndpointRedisSetting, Map<String, dynamic>>(redisSettings, (value) => value.toMap()),
      'redshiftSettings': pulumi.Input.encodeList<GetEndpointRedshiftSetting, Map<String, dynamic>>(redshiftSettings, (value) => value.toMap()),
      'region': region,
      's3Settings': pulumi.Input.encodeList<GetEndpointS3Setting, Map<String, dynamic>>(s3Settings, (value) => value.toMap()),
      'secretsManagerAccessRoleArn': secretsManagerAccessRoleArn,
      'secretsManagerArn': secretsManagerArn,
      'serverName': serverName,
      'serviceAccessRole': serviceAccessRole,
      'sslMode': sslMode,
      'tags': tags,
      'username': username,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      certificateArn: map['certificateArn'] as String,
      databaseName: map['databaseName'] as String,
      elasticsearchSettings: pulumi.Input.decodeList<GetEndpointElasticsearchSetting>(map['elasticsearchSettings'], (value) => GetEndpointElasticsearchSetting.fromMap((value as Map).cast<String, dynamic>())),
      endpointArn: map['endpointArn'] as String,
      endpointId: map['endpointId'] as String,
      endpointType: map['endpointType'] as String,
      engineName: map['engineName'] as String,
      extraConnectionAttributes: map['extraConnectionAttributes'] as String,
      id: map['id'] as String,
      kafkaSettings: pulumi.Input.decodeList<GetEndpointKafkaSetting>(map['kafkaSettings'], (value) => GetEndpointKafkaSetting.fromMap((value as Map).cast<String, dynamic>())),
      kinesisSettings: pulumi.Input.decodeList<GetEndpointKinesisSetting>(map['kinesisSettings'], (value) => GetEndpointKinesisSetting.fromMap((value as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] as String,
      mongodbSettings: pulumi.Input.decodeList<GetEndpointMongodbSetting>(map['mongodbSettings'], (value) => GetEndpointMongodbSetting.fromMap((value as Map).cast<String, dynamic>())),
      mysqlSettings: pulumi.Input.decodeList<GetEndpointMysqlSetting>(map['mysqlSettings'], (value) => GetEndpointMysqlSetting.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] as String,
      port: map['port'] as int,
      postgresSettings: pulumi.Input.decodeList<GetEndpointPostgresSetting>(map['postgresSettings'], (value) => GetEndpointPostgresSetting.fromMap((value as Map).cast<String, dynamic>())),
      redisSettings: pulumi.Input.decodeList<GetEndpointRedisSetting>(map['redisSettings'], (value) => GetEndpointRedisSetting.fromMap((value as Map).cast<String, dynamic>())),
      redshiftSettings: pulumi.Input.decodeList<GetEndpointRedshiftSetting>(map['redshiftSettings'], (value) => GetEndpointRedshiftSetting.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      s3Settings: pulumi.Input.decodeList<GetEndpointS3Setting>(map['s3Settings'], (value) => GetEndpointS3Setting.fromMap((value as Map).cast<String, dynamic>())),
      secretsManagerAccessRoleArn: map['secretsManagerAccessRoleArn'] as String,
      secretsManagerArn: map['secretsManagerArn'] as String,
      serverName: map['serverName'] as String,
      serviceAccessRole: map['serviceAccessRole'] as String,
      sslMode: map['sslMode'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      username: map['username'] as String,
    );
  }
}

