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
    this.region,
    this.vpcEndpointId,
    this.vpcEndpointServiceId,
    this.vpcEndpointState,
  });

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
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : (map['vpcEndpointId'] as String).input(),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : (map['vpcEndpointServiceId'] as String).input(),
      vpcEndpointState: map['vpcEndpointState'] == null ? null : (map['vpcEndpointState'] as String).input(),
    );
  }
}

