// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2clientvpn_network_association_network_association_args_doc}
/// The set of arguments for NetworkAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_network_association_network_association_args_doc}
class NetworkAssociationArgs {
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String> clientVpnEndpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the subnet to associate with the Client VPN endpoint.
  final pulumi.Input<String> subnetId;

  /// Creates a new [NetworkAssociationArgs].
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] The ID of the subnet to associate with the Client VPN endpoint.
  const NetworkAssociationArgs({
    required this.clientVpnEndpointId,
    this.region,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientVpnEndpointId': clientVpnEndpointId,
      'region': ?region,
      'subnetId': subnetId,
    };
  }

  factory NetworkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAssociationArgs(
      clientVpnEndpointId: pulumi.Input.fromValue(map['clientVpnEndpointId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

