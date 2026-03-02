// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_connection_notification_vpc_endpoint_connection_notification_args_doc}
/// The set of arguments for VpcEndpointConnectionNotification.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_connection_notification_vpc_endpoint_connection_notification_args_doc}
class VpcEndpointConnectionNotificationArgs {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  ///
  /// > **NOTE:** One of `vpc_endpoint_service_id` or `vpc_endpoint_id` must be specified.
  final pulumi.Input<List<String>> connectionEvents;
  /// The ARN of the SNS topic for the notifications.
  final pulumi.Input<String> connectionNotificationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC Endpoint to receive notifications for.
  final pulumi.Input<String>? vpcEndpointId;
  /// The ID of the VPC Endpoint Service to receive notifications for.
  final pulumi.Input<String>? vpcEndpointServiceId;

  /// Creates a new [VpcEndpointConnectionNotificationArgs].
  /// [connectionEvents] One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  /// [connectionNotificationArn] The ARN of the SNS topic for the notifications.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] The ID of the VPC Endpoint to receive notifications for.
  /// [vpcEndpointServiceId] The ID of the VPC Endpoint Service to receive notifications for.
  VpcEndpointConnectionNotificationArgs({
    required this.connectionEvents,
    required this.connectionNotificationArn,
    this.region,
    this.vpcEndpointId,
    this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEvents': connectionEvents,
      'connectionNotificationArn': connectionNotificationArn,
      'region': ?region,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcEndpointServiceId': ?vpcEndpointServiceId,
    };
  }

  factory VpcEndpointConnectionNotificationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionNotificationArgs(
      connectionEvents: ((map['connectionEvents'] as List).cast<String>()).input(),
      connectionNotificationArn: (map['connectionNotificationArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : ((map['vpcEndpointId'] as String).input()).input(),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : ((map['vpcEndpointServiceId'] as String).input()).input(),
    );
  }
}

