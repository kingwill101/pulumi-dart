// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_ssm_resource_compliance_summary_item_properties_response.dart';

/// Definition of SsmResourceComplianceSummaryItem
class SsmResourceComplianceSummaryItemPropertiesResponse {
  /// Amazon Resource Name (ARN)
  final pulumi.Input<String?>? arn;
  /// AWS Account ID
  final pulumi.Input<String?>? awsAccountId;
  /// AWS Properties
  final pulumi.Input<AwsSsmResourceComplianceSummaryItemPropertiesResponse?>? awsProperties;
  /// AWS Region
  final pulumi.Input<String?>? awsRegion;
  /// AWS Source Schema
  final pulumi.Input<String?>? awsSourceSchema;
  /// AWS Tags
  final pulumi.Input<Map<String, String>?>? awsTags;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Public Cloud Connectors Resource ID
  final pulumi.Input<String?>? publicCloudConnectorsResourceId;
  /// Public Cloud Resource Name
  final pulumi.Input<String?>? publicCloudResourceName;

  /// Creates a new [SsmResourceComplianceSummaryItemPropertiesResponse].
  /// [arn] Amazon Resource Name (ARN)
  /// [awsAccountId] AWS Account ID
  /// [awsProperties] AWS Properties
  /// [awsRegion] AWS Region
  /// [awsSourceSchema] AWS Source Schema
  /// [awsTags] AWS Tags
  /// [provisioningState] The status of the last operation.
  /// [publicCloudConnectorsResourceId] Public Cloud Connectors Resource ID
  /// [publicCloudResourceName] Public Cloud Resource Name
  const SsmResourceComplianceSummaryItemPropertiesResponse({
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
      'awsProperties': ?pulumi.Input.mapOptionalInputValue<AwsSsmResourceComplianceSummaryItemPropertiesResponse, Map<String, dynamic>>(awsProperties, (value) => value.toMap()),
      'awsRegion': ?awsRegion,
      'awsSourceSchema': ?awsSourceSchema,
      'awsTags': ?awsTags,
      'provisioningState': provisioningState,
      'publicCloudConnectorsResourceId': ?publicCloudConnectorsResourceId,
      'publicCloudResourceName': ?publicCloudResourceName,
    };
  }

  factory SsmResourceComplianceSummaryItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SsmResourceComplianceSummaryItemPropertiesResponse(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsProperties: (() { final guardedValue = map['awsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsSsmResourceComplianceSummaryItemPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsSourceSchema: (() { final guardedValue = map['awsSourceSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsTags: (() { final guardedValue = map['awsTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicCloudConnectorsResourceId: (() { final guardedValue = map['publicCloudConnectorsResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicCloudResourceName: (() { final guardedValue = map['publicCloudResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
