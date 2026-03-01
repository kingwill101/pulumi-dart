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
    pulumi.Output<List<String>>? connectionEvents,
    pulumi.Output<String>? connectionNotificationArn,
    pulumi.Output<String>? notificationType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<String>? vpcEndpointId,
    pulumi.Output<String>? vpcEndpointServiceId,
  }) :
      connectionEvents = pulumi.Input.asOptionalInput<List<String>>(connectionEvents),
      connectionNotificationArn = pulumi.Input.asOptionalInput<String>(connectionNotificationArn),
      notificationType = pulumi.Input.asOptionalInput<String>(notificationType),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId),
      vpcEndpointServiceId = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceId);

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
      connectionEvents: map['connectionEvents'] == null ? null : pulumi.Output.create<List<String>>((map['connectionEvents'] as List).cast<String>()),
      connectionNotificationArn: map['connectionNotificationArn'] == null ? null : pulumi.Output.create<String>(map['connectionNotificationArn'] as String),
      notificationType: map['notificationType'] == null ? null : pulumi.Output.create<String>(map['notificationType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointId'] as String),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointServiceId'] as String),
    );
  }
}

