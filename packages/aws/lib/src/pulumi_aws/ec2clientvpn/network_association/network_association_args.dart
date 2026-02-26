// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkAssociation.
class NetworkAssociationArgs {
  /// The ID of the Client VPN endpoint.
  final Input<String> clientVpnEndpointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the subnet to associate with the Client VPN endpoint.
  final Input<String> subnetId;

  NetworkAssociationArgs({
    required this.clientVpnEndpointId,
    this.region,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientVpnEndpointId'] = clientVpnEndpointId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory NetworkAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAssociationArgs(
      clientVpnEndpointId: Input.asInput<String>(map['clientVpnEndpointId']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetId: Input.asInput<String>(map['subnetId']),
    );
  }
}
