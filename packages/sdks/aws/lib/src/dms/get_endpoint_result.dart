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
  final String? certificateArn;
  final String? databaseName;
  final List<GetEndpointElasticsearchSetting>? elasticsearchSettings;
  final String? endpointArn;
  final String? endpointId;
  final String? endpointType;
  final String? engineName;
  final String? extraConnectionAttributes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetEndpointKafkaSetting>? kafkaSettings;
  final List<GetEndpointKinesisSetting>? kinesisSettings;
  final String? kmsKeyArn;
  final List<GetEndpointMongodbSetting>? mongodbSettings;
  final List<GetEndpointMysqlSetting>? mysqlSettings;
  final String? password;
  final int? port;
  final List<GetEndpointPostgresSetting>? postgresSettings;
  final List<GetEndpointRedisSetting>? redisSettings;
  final List<GetEndpointRedshiftSetting>? redshiftSettings;
  final String? region;
  final List<GetEndpointS3Setting>? s3Settings;
  final String? secretsManagerAccessRoleArn;
  final String? secretsManagerArn;
  final String? serverName;
  final String? serviceAccessRole;
  final String? sslMode;
  final Map<String, String>? tags;
  final String? username;

  /// Creates a new [GetEndpointResult].
  /// [certificateArn] Optional.
  /// [databaseName] Optional.
  /// [elasticsearchSettings] Optional.
  /// [endpointArn] Optional.
  /// [endpointId] Optional.
  /// [endpointType] Optional.
  /// [engineName] Optional.
  /// [extraConnectionAttributes] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaSettings] Optional.
  /// [kinesisSettings] Optional.
  /// [kmsKeyArn] Optional.
  /// [mongodbSettings] Optional.
  /// [mysqlSettings] Optional.
  /// [password] Optional.
  /// [port] Optional.
  /// [postgresSettings] Optional.
  /// [redisSettings] Optional.
  /// [redshiftSettings] Optional.
  /// [region] Optional.
  /// [s3Settings] Optional.
  /// [secretsManagerAccessRoleArn] Optional.
  /// [secretsManagerArn] Optional.
  /// [serverName] Optional.
  /// [serviceAccessRole] Optional.
  /// [sslMode] Optional.
  /// [tags] Optional.
  /// [username] Optional.
  const GetEndpointResult({
    this.certificateArn,
    this.databaseName,
    this.elasticsearchSettings,
    this.endpointArn,
    this.endpointId,
    this.endpointType,
    this.engineName,
    this.extraConnectionAttributes,
    this.id,
    this.kafkaSettings,
    this.kinesisSettings,
    this.kmsKeyArn,
    this.mongodbSettings,
    this.mysqlSettings,
    this.password,
    this.port,
    this.postgresSettings,
    this.redisSettings,
    this.redshiftSettings,
    this.region,
    this.s3Settings,
    this.secretsManagerAccessRoleArn,
    this.secretsManagerArn,
    this.serverName,
    this.serviceAccessRole,
    this.sslMode,
    this.tags,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'databaseName': ?databaseName,
      'elasticsearchSettings': ?(() { final guardedValue = elasticsearchSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointElasticsearchSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpointArn': ?endpointArn,
      'endpointId': ?endpointId,
      'endpointType': ?endpointType,
      'engineName': ?engineName,
      'extraConnectionAttributes': ?extraConnectionAttributes,
      'id': ?id,
      'kafkaSettings': ?(() { final guardedValue = kafkaSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointKafkaSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kinesisSettings': ?(() { final guardedValue = kinesisSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointKinesisSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyArn': ?kmsKeyArn,
      'mongodbSettings': ?(() { final guardedValue = mongodbSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointMongodbSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mysqlSettings': ?(() { final guardedValue = mysqlSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointMysqlSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'password': ?password,
      'port': ?port,
      'postgresSettings': ?(() { final guardedValue = postgresSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointPostgresSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'redisSettings': ?(() { final guardedValue = redisSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointRedisSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'redshiftSettings': ?(() { final guardedValue = redshiftSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointRedshiftSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      's3Settings': ?(() { final guardedValue = s3Settings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointS3Setting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secretsManagerAccessRoleArn': ?secretsManagerAccessRoleArn,
      'secretsManagerArn': ?secretsManagerArn,
      'serverName': ?serverName,
      'serviceAccessRole': ?serviceAccessRole,
      'sslMode': ?sslMode,
      'tags': ?tags,
      'username': ?username,
    };
  }

  factory GetEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointResult(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticsearchSettings: (() { final guardedValue = map['elasticsearchSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointElasticsearchSetting>(guardedValue, (value) => GetEndpointElasticsearchSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpointArn: (() { final guardedValue = map['endpointArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineName: (() { final guardedValue = map['engineName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extraConnectionAttributes: (() { final guardedValue = map['extraConnectionAttributes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaSettings: (() { final guardedValue = map['kafkaSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointKafkaSetting>(guardedValue, (value) => GetEndpointKafkaSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      kinesisSettings: (() { final guardedValue = map['kinesisSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointKinesisSetting>(guardedValue, (value) => GetEndpointKinesisSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mongodbSettings: (() { final guardedValue = map['mongodbSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointMongodbSetting>(guardedValue, (value) => GetEndpointMongodbSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      mysqlSettings: (() { final guardedValue = map['mysqlSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointMysqlSetting>(guardedValue, (value) => GetEndpointMysqlSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      postgresSettings: (() { final guardedValue = map['postgresSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointPostgresSetting>(guardedValue, (value) => GetEndpointPostgresSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      redisSettings: (() { final guardedValue = map['redisSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointRedisSetting>(guardedValue, (value) => GetEndpointRedisSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      redshiftSettings: (() { final guardedValue = map['redshiftSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointRedshiftSetting>(guardedValue, (value) => GetEndpointRedshiftSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3Settings: (() { final guardedValue = map['s3Settings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointS3Setting>(guardedValue, (value) => GetEndpointS3Setting.fromMap((value as Map).cast<String, dynamic>())); })(),
      secretsManagerAccessRoleArn: (() { final guardedValue = map['secretsManagerAccessRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretsManagerArn: (() { final guardedValue = map['secretsManagerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccessRole: (() { final guardedValue = map['serviceAccessRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
