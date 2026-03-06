// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGroupEndpointConfiguration {
  /// An ARN of an exposed cross-account attachment. See the [AWS documentation](https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html) for more details.
  final pulumi.Input<String>? attachmentArn;
  /// Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. See the [AWS documentation](https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html) for more details. The default value is `false`.
  /// **Note:** When client IP address preservation is enabled, the Global Accelerator service creates an EC2 Security Group in the VPC named `GlobalAccelerator` that must be deleted (potentially outside of the provider) before the VPC will successfully delete. If this EC2 Security Group is not deleted, the provider will retry the VPC deletion for a few minutes before reporting a `DependencyViolation` error. This cannot be resolved by re-running the provider.
  final pulumi.Input<bool>? clientIpPreservationEnabled;
  /// An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID.
  final pulumi.Input<String>? endpointId;
  /// The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify.
  final pulumi.Input<int>? weight;

  /// Creates a new [EndpointGroupEndpointConfiguration].
  /// [attachmentArn] An ARN of an exposed cross-account attachment. See the [AWS documentation](https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html) for more details.
  /// [clientIpPreservationEnabled] Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. See the [AWS documentation](https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html) for more details. The default value is `false`.
  /// [endpointId] An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID.
  /// [weight] The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify.
  const EndpointGroupEndpointConfiguration({
    this.attachmentArn,
    this.clientIpPreservationEnabled,
    this.endpointId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentArn': ?attachmentArn,
      'clientIpPreservationEnabled': ?clientIpPreservationEnabled,
      'endpointId': ?endpointId,
      'weight': ?weight,
    };
  }

  factory EndpointGroupEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointGroupEndpointConfiguration(
      attachmentArn: (() { final guardedValue = map['attachmentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIpPreservationEnabled: (() { final guardedValue = map['clientIpPreservationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

