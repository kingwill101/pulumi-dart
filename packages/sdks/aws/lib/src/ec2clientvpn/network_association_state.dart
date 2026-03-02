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
    this.associationId,
    this.clientVpnEndpointId,
    this.region,
    this.subnetId,
    this.vpcId,
  });

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
      associationId: map['associationId'] == null ? null : (map['associationId'] as String).input(),
      clientVpnEndpointId: map['clientVpnEndpointId'] == null ? null : (map['clientVpnEndpointId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

