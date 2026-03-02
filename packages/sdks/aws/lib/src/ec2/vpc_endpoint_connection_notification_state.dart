// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointConnectionNotification resources.
class VpcEndpointConnectionNotificationState {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  ///
  /// > **NOTE:** One of `vpc_endpoint_service_id` or `vpc_endpoint_id` must be specified.
  final pulumi.Input<List<String>>? connectionEvents;
  /// The ARN of the SNS topic for the notifications.
  final pulumi.Input<String>? connectionNotificationArn;
  /// The type of notification.
  final pulumi.Input<String>? notificationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The state of the notification.
  final pulumi.Input<String>? state;
  /// The ID of the VPC Endpoint to receive notifications for.
  final pulumi.Input<String>? vpcEndpointId;
  /// The ID of the VPC Endpoint Service to receive notifications for.
  final pulumi.Input<String>? vpcEndpointServiceId;

  /// Creates a new [VpcEndpointConnectionNotificationState].
  /// [connectionEvents] One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  /// [connectionNotificationArn] The ARN of the SNS topic for the notifications.
  /// [notificationType] The type of notification.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The state of the notification.
  /// [vpcEndpointId] The ID of the VPC Endpoint to receive notifications for.
  /// [vpcEndpointServiceId] The ID of the VPC Endpoint Service to receive notifications for.
  VpcEndpointConnectionNotificationState({
    this.connectionEvents,
    this.connectionNotificationArn,
    this.notificationType,
    this.region,
    this.state,
    this.vpcEndpointId,
    this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionEvents': ?connectionEvents,
      'connectionNotificationArn': ?connectionNotificationArn,
      'notificationType': ?notificationType,
      'region': ?region,
      'state': ?state,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcEndpointServiceId': ?vpcEndpointServiceId,
    };
  }

  factory VpcEndpointConnectionNotificationState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionNotificationState(
      connectionEvents: map['connectionEvents'] == null ? null : ((map['connectionEvents'] as List).cast<String>()).input(),
      connectionNotificationArn: map['connectionNotificationArn'] == null ? null : (map['connectionNotificationArn'] as String).input(),
      notificationType: map['notificationType'] == null ? null : (map['notificationType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : (map['vpcEndpointId'] as String).input(),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : (map['vpcEndpointServiceId'] as String).input(),
    );
  }
}

