// ignore_for_file: unused_element, unnecessary_cast

import 'aws_elastic_load_balancing_v2_listener_properties.dart';

/// Definition of ElasticLoadBalancingV2Listener
class ElasticLoadBalancingV2ListenerProperties {
  /// Amazon Resource Name (ARN)
  final String? arn;
  /// AWS Account ID
  final String? awsAccountId;
  /// AWS Properties
  final AwsElasticLoadBalancingV2ListenerProperties? awsProperties;
  /// AWS Region
  final String? awsRegion;
  /// AWS Source Schema
  final String? awsSourceSchema;
  /// AWS Tags
  final Map<String, String>? awsTags;
  /// Public Cloud Connectors Resource ID
  final String? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final String? publicCloudResourceName;

  /// Creates a new [ElasticLoadBalancingV2ListenerProperties].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  ElasticLoadBalancingV2ListenerProperties({
    this.arn,
    this.awsAccountId,
    this.awsProperties,
    this.awsRegion,
    this.awsSourceSchema,
    this.awsTags,
    this.publicCloudConnectorsResourceId,
    this.publicCloudResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'awsProperties': ?awsProperties == null ? null : awsProperties!.toMap(),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory ElasticLoadBalancingV2ListenerProperties.fromMap(Map<String, dynamic> map) {
    return ElasticLoadBalancingV2ListenerProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      awsAccountId: map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      awsProperties: map['awsProperties'] == null ? null : AwsElasticLoadBalancingV2ListenerProperties.fromMap((map['awsProperties'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      awsSourceSchema: map['awsSourceSchema'] == null ? null : map['awsSourceSchema'] as String,
      awsTags: map['awsTags'] == null ? null : (map['awsTags'] as Map).cast<String, String>(),
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : map['publicCloudConnectorsResourceId'] as String,
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : map['publicCloudResourceName'] as String,
    );
  }
}

