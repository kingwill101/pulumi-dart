// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_ec2_ipam_properties_response.dart';

/// Definition of Ec2Ipam
class Ec2IpamPropertiesResponse {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// AWS Account ID
  final pulumi.Input<String>? awsAccountId;
  /// AWS Properties
  final pulumi.Input<AwsEc2IpamPropertiesResponse>? awsProperties;
  /// AWS Region
  final pulumi.Input<String>? awsRegion;
  /// AWS Source Schema
  final pulumi.Input<String>? awsSourceSchema;
  /// AWS Tags
  final pulumi.Input<Map<String, String>>? awsTags;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Public Cloud Connectors Resource ID
  final pulumi.Input<String>? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final pulumi.Input<String>? publicCloudResourceName;

  /// Creates a new [Ec2IpamPropertiesResponse].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [provisioningState] The status of the last operation.
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  Ec2IpamPropertiesResponse({
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
      'awsProperties': ?pulumi.Input.mapOptionalInputValue<AwsEc2IpamPropertiesResponse, Map<String, dynamic>>(awsProperties, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'provisioningState': provisioningState,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory Ec2IpamPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return Ec2IpamPropertiesResponse(
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId']! as String).input(),
      awsProperties: map['awsProperties'] == null ? null : (AwsEc2IpamPropertiesResponse.fromMap((map['awsProperties']! as Map).cast<String, dynamic>())).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion']! as String).input(),
      awsSourceSchema: map['awsSourceSchema'] == null ? null : (map['awsSourceSchema']! as String).input(),
      awsTags: map['awsTags'] == null ? null : ((map['awsTags']! as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : (map['publicCloudConnectorsResourceId']! as String).input(),
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : (map['publicCloudResourceName']! as String).input(),
    );
  }
}

