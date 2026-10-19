// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointConnectionNotification resources.
class VpcEndpointConnectionNotificationState {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  final pulumi.Input<List<String>?>? connectionEvents;
  /// ARN of the SNS topic for the notifications.
  final pulumi.Input<String?>? connectionNotificationArn;
  /// Type of notification.
  final pulumi.Input<String?>? notificationType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the notification.
  final pulumi.Input<String?>? state;
  /// ID of the VPC Endpoint to receive notifications for.
  final pulumi.Input<String?>? vpcEndpointId;
  /// ID of the VPC Endpoint Service to receive notifications for.
  ///
  /// &gt; **NOTE:** One of `vpcEndpointServiceId` or `vpcEndpointId` must be specified.
  final pulumi.Input<String?>? vpcEndpointServiceId;

  /// Creates a new [VpcEndpointConnectionNotificationState].
  /// [connectionEvents] One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  /// [connectionNotificationArn] ARN of the SNS topic for the notifications.
  /// [notificationType] Type of notification.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the notification.
  /// [vpcEndpointId] ID of the VPC Endpoint to receive notifications for.
  /// [vpcEndpointServiceId] ID of the VPC Endpoint Service to receive notifications for.
  const VpcEndpointConnectionNotificationState({
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
      connectionEvents: (() { final guardedValue = map['connectionEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectionNotificationArn: (() { final guardedValue = map['connectionNotificationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationType: (() { final guardedValue = map['notificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointServiceId: (() { final guardedValue = map['vpcEndpointServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
