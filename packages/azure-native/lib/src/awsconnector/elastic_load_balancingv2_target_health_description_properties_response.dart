// ignore_for_file: unused_element, unnecessary_cast

import 'aws_elastic_load_balancingv2_target_health_description_properties_response.dart';

/// Definition of ElasticLoadBalancingv2TargetHealthDescription
class ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse {
  /// Amazon Resource Name (ARN)
  final String? arn;
  /// AWS Account ID
  final String? awsAccountId;
  /// AWS Properties
  final AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse? awsProperties;
  /// AWS Region
  final String? awsRegion;
  /// AWS Source Schema
  final String? awsSourceSchema;
  /// AWS Tags
  final Map<String, String>? awsTags;
  /// The status of the last operation.
  final String provisioningState;
  /// Public Cloud Connectors Resource ID
  final String? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final String? publicCloudResourceName;

  /// Creates a new [ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [provisioningState] The status of the last operation.
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse({
    this.arn,
    this.awsAccountId,
    this.awsProperties,
    this.awsRegion,
    this.awsSourceSchema,
    this.awsTags,
    required this.provisioningState,
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
      'provisioningState': provisioningState,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      awsAccountId: map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      awsProperties: map['awsProperties'] == null ? null : AwsElasticLoadBalancingv2TargetHealthDescriptionPropertiesResponse.fromMap((map['awsProperties'] as Map).cast<String, dynamic>()),
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      awsSourceSchema: map['awsSourceSchema'] == null ? null : map['awsSourceSchema'] as String,
      awsTags: map['awsTags'] == null ? null : (map['awsTags'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : map['publicCloudConnectorsResourceId'] as String,
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : map['publicCloudResourceName'] as String,
    );
  }
}

