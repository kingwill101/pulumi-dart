// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcEndpointConnectionNotification.
class VpcEndpointConnectionNotificationArgs {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`vpcEndpointServiceId`" pulumi-lang-dotnet="`VpcEndpointServiceId`" pulumi-lang-go="`vpcEndpointServiceId`" pulumi-lang-python="`vpc_endpoint_service_id`" pulumi-lang-yaml="`vpcEndpointServiceId`" pulumi-lang-java="`vpcEndpointServiceId`">`vpc_endpoint_service_id`</span> or <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span> must be specified.
  final Input<List<String>> connectionEvents;

  /// The ARN of the SNS topic for the notifications.
  final Input<String> connectionNotificationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the VPC Endpoint to receive notifications for.
  final Input<String>? vpcEndpointId;

  /// The ID of the VPC Endpoint Service to receive notifications for.
  final Input<String>? vpcEndpointServiceId;

  VpcEndpointConnectionNotificationArgs({
    required this.connectionEvents,
    required this.connectionNotificationArn,
    this.region,
    this.vpcEndpointId,
    this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionEvents'] = connectionEvents;
    map['connectionNotificationArn'] = connectionNotificationArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    final vpcEndpointServiceIdValue = vpcEndpointServiceId;
    if (vpcEndpointServiceIdValue != null) {
      map['vpcEndpointServiceId'] = vpcEndpointServiceIdValue;
    }
    return map;
  }

  factory VpcEndpointConnectionNotificationArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointConnectionNotificationArgs(
      connectionEvents: Input.asInput<List<String>>(map['connectionEvents']),
      connectionNotificationArn:
          Input.asInput<String>(map['connectionNotificationArn']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: Input.asOptionalInput<String>(map['vpcEndpointId']),
      vpcEndpointServiceId:
          Input.asOptionalInput<String>(map['vpcEndpointServiceId']),
    );
  }
}
