// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointConnectionAccepter resources.
class VpcEndpointConnectionAccepterState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS VPC Endpoint ID.
  final pulumi.Input<String>? vpcEndpointId;
  /// AWS VPC Endpoint Service ID.
  final pulumi.Input<String>? vpcEndpointServiceId;
  /// State of the VPC Endpoint.
  final pulumi.Input<String>? vpcEndpointState;

  /// Creates a new [VpcEndpointConnectionAccepterState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] AWS VPC Endpoint ID.
  /// [vpcEndpointServiceId] AWS VPC Endpoint Service ID.
  /// [vpcEndpointState] State of the VPC Endpoint.
  VpcEndpointConnectionAccepterState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? vpcEndpointId,
    pulumi.Output<String>? vpcEndpointServiceId,
    pulumi.Output<String>? vpcEndpointState,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId),
      vpcEndpointServiceId = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceId),
      vpcEndpointState = pulumi.Input.asOptionalInput<String>(vpcEndpointState);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcEndpointServiceId': ?vpcEndpointServiceId,
      'vpcEndpointState': ?vpcEndpointState,
    };
  }

  factory VpcEndpointConnectionAccepterState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionAccepterState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointId'] as String),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointServiceId'] as String),
      vpcEndpointState: map['vpcEndpointState'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointState'] as String),
    );
  }
}

