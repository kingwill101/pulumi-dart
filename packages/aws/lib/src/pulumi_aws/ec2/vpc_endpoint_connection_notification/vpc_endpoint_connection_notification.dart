import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_connection_notification_args.dart';

/// Provides a VPC Endpoint connection notification resource.
/// Connection notifications notify subscribers of VPC Endpoint events.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint connection notifications using the VPC endpoint connection notification `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointConnectionNotification:VpcEndpointConnectionNotification foo vpce-nfn-09e6ed3b4efba2263
/// ```
class VpcEndpointConnectionNotification extends CustomResource {
  /// One or more endpoint [events](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateVpcEndpointConnectionNotification.html#API_CreateVpcEndpointConnectionNotification_RequestParameters) for which to receive notifications.
  ///
  /// > **NOTE:** One of `vpc_endpoint_service_id` or `vpc_endpoint_id` must be specified.
  late final Output<List<String>> connectionEvents;

  /// The ARN of the SNS topic for the notifications.
  late final Output<String> connectionNotificationArn;

  /// The type of notification.
  late final Output<String> notificationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The state of the notification.
  late final Output<String> state;

  /// The ID of the VPC Endpoint to receive notifications for.
  late final Output<String?> vpcEndpointId;

  /// The ID of the VPC Endpoint Service to receive notifications for.
  late final Output<String?> vpcEndpointServiceId;

  VpcEndpointConnectionNotification(
    String name, {
    VpcEndpointConnectionNotificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionNotification:VpcEndpointConnectionNotification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionEvents = registerOutput<List<String>>('connectionEvents');
    this.connectionNotificationArn =
        registerOutput<String>('connectionNotificationArn');
    this.notificationType = registerOutput<String>('notificationType');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.vpcEndpointId = registerOutput<String?>('vpcEndpointId');
    this.vpcEndpointServiceId = registerOutput<String?>('vpcEndpointServiceId');
  }
}
