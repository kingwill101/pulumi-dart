// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_elastic_load_balancing_v2_load_balancer_properties.dart';

/// Definition of ElasticLoadBalancingV2LoadBalancer
class ElasticLoadBalancingV2LoadBalancerProperties {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// AWS Account ID
  final pulumi.Input<String>? awsAccountId;
  /// AWS Properties
  final pulumi.Input<AwsElasticLoadBalancingV2LoadBalancerProperties>? awsProperties;
  /// AWS Region
  final pulumi.Input<String>? awsRegion;
  /// AWS Source Schema
  final pulumi.Input<String>? awsSourceSchema;
  /// AWS Tags
  final pulumi.Input<Map<String, String>>? awsTags;
  /// Public Cloud Connectors Resource ID
  final pulumi.Input<String>? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final pulumi.Input<String>? publicCloudResourceName;

  /// Creates a new [ElasticLoadBalancingV2LoadBalancerProperties].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  ElasticLoadBalancingV2LoadBalancerProperties({
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
      'awsProperties': ?pulumi.Input.mapOptionalInputValue<AwsElasticLoadBalancingV2LoadBalancerProperties, Map<String, dynamic>>(awsProperties, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory ElasticLoadBalancingV2LoadBalancerProperties.fromMap(Map<String, dynamic> map) {
    return ElasticLoadBalancingV2LoadBalancerProperties(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId']! as String).input(),
      awsProperties: map['awsProperties'] == null ? null : (AwsElasticLoadBalancingV2LoadBalancerProperties.fromMap((map['awsProperties']! as Map).cast<String, dynamic>())).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion']! as String).input(),
      awsSourceSchema: map['awsSourceSchema'] == null ? null : (map['awsSourceSchema']! as String).input(),
      awsTags: map['awsTags'] == null ? null : ((map['awsTags']! as Map).cast<String, String>()).input(),
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : (map['publicCloudConnectorsResourceId']! as String).input(),
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : (map['publicCloudResourceName']! as String).input(),
    );
  }
}

