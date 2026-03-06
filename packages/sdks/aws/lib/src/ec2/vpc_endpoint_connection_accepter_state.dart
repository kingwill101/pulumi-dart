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
  const VpcEndpointConnectionAccepterState({
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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointServiceId: (() { final guardedValue = map['vpcEndpointServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointState: (() { final guardedValue = map['vpcEndpointState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

