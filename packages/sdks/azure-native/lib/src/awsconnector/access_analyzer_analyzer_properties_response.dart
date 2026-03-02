// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_access_analyzer_analyzer_properties_response.dart';

/// Definition of AccessAnalyzerAnalyzer
class AccessAnalyzerAnalyzerPropertiesResponse {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String>? arn;
  /// AWS Account ID
  final pulumi.Input<String>? awsAccountId;
  /// AWS Properties
  final pulumi.Input<AwsAccessAnalyzerAnalyzerPropertiesResponse>? awsProperties;
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

  /// Creates a new [AccessAnalyzerAnalyzerPropertiesResponse].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [provisioningState] The status of the last operation.
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  AccessAnalyzerAnalyzerPropertiesResponse({
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
      'awsProperties': ?pulumi.Input.mapOptionalInputValue<AwsAccessAnalyzerAnalyzerPropertiesResponse, Map<String, dynamic>>(awsProperties, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'provisioningState': provisioningState,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory AccessAnalyzerAnalyzerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccessAnalyzerAnalyzerPropertiesResponse(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      awsProperties: map['awsProperties'] == null ? null : (AwsAccessAnalyzerAnalyzerPropertiesResponse.fromMap((map['awsProperties'] as Map).cast<String, dynamic>())).input(),
      awsRegion: map['awsRegion'] == null ? null : (map['awsRegion'] as String).input(),
      awsSourceSchema: map['awsSourceSchema'] == null ? null : (map['awsSourceSchema'] as String).input(),
      awsTags: map['awsTags'] == null ? null : ((map['awsTags'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicCloudConnectorsResourceId: map['publicCloudConnectorsResourceId'] == null ? null : (map['publicCloudConnectorsResourceId'] as String).input(),
      publicCloudResourceName: map['publicCloudResourceName'] == null ? null : (map['publicCloudResourceName'] as String).input(),
    );
  }
}

