// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_aws_cloud_trail_data_connector_aws_cloud_trail_args_doc}
/// The set of arguments for DataConnectorAwsCloudTrail.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_aws_cloud_trail_data_connector_aws_cloud_trail_args_doc}
class DataConnectorAwsCloudTrailArgs {
  /// The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector.
  final pulumi.Input<String> awsRoleArn;
  /// The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [DataConnectorAwsCloudTrailArgs].
  /// [awsRoleArn] The ARN of the AWS CloudTrail role, which is connected to this AWS CloudTrail Data Connector.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this AWS CloudTrail Data Connector resides in. Changing this forces a new AWS CloudTrail Data Connector to be created.
  /// [name] The name which should be used for this AWS CloudTrail Data Connector. Changing this forces a new AWS CloudTrail Data Connector to be created.
  DataConnectorAwsCloudTrailArgs({
    required String awsRoleArn,
    required String logAnalyticsWorkspaceId,
    String? name,
  }) :
      awsRoleArn = pulumi.Input.asInput<String>(awsRoleArn),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory DataConnectorAwsCloudTrailArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorAwsCloudTrailArgs(
      awsRoleArn: map['awsRoleArn'] as String,
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

