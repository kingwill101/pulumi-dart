// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkAssociation resources.
class NetworkAssociationState {
  /// The unique ID of the target network association.
  final pulumi.Input<String>? associationId;
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String>? clientVpnEndpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the subnet to associate with the Client VPN endpoint.
  final pulumi.Input<String>? subnetId;
  /// The ID of the VPC in which the target subnet is located.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NetworkAssociationState].
  /// [associationId] The unique ID of the target network association.
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the subnet to associate with the Client VPN endpoint.
  /// [vpcId] The ID of the VPC in which the target subnet is located.
  NetworkAssociationState({
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? clientVpnEndpointId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? vpcId,
  }) :
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      clientVpnEndpointId = pulumi.Input.asOptionalInput<String>(clientVpnEndpointId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': ?associationId,
      'clientVpnEndpointId': ?clientVpnEndpointId,
      'region': ?region,
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory NetworkAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkAssociationState(
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      clientVpnEndpointId: map['clientVpnEndpointId'] == null ? null : pulumi.Output.create<String>(map['clientVpnEndpointId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

