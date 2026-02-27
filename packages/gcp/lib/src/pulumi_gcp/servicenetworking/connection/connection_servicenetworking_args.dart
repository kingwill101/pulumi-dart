// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Connection.
class ConnectionServicenetworkingArgs {
  /// The deletion policy for the service networking connection. Setting to ABANDON allows the resource to be abandoned rather than deleted. This will enable a successful pulumi destroy when destroying CloudSQL instances. Use with care as it can lead to dangling resources.
  final pulumi.Input<String>? deletionPolicy;

  /// Name of VPC network connected with service producers using VPC peering.
  final pulumi.Input<String> network;

  /// Named IP address range(s) of PEERING type reserved for
  /// this service provider. Note that invoking this method with a different range when connection
  /// is already established will not reallocate already provisioned service producer subnetworks.
  final pulumi.Input<List<String>> reservedPeeringRanges;

  /// Provider peering service that is managing peering connectivity for a
  /// service provider organization. For Google services that support this functionality it is
  /// 'servicenetworking.googleapis.com'.
  final pulumi.Input<String> service;

  /// When set to true, enforce an update of the reserved peering ranges on the existing service networking connection in case of a new connection creation failure.
  final pulumi.Input<bool>? updateOnCreationFail;

  ConnectionServicenetworkingArgs({
    this.deletionPolicy,
    required this.network,
    required this.reservedPeeringRanges,
    required this.service,
    this.updateOnCreationFail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['network'] = network;
    map['reservedPeeringRanges'] = reservedPeeringRanges;
    map['service'] = service;
    final updateOnCreationFailValue = updateOnCreationFail;
    if (updateOnCreationFailValue != null) {
      map['updateOnCreationFail'] = updateOnCreationFailValue;
    }
    return map;
  }

  factory ConnectionServicenetworkingArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionServicenetworkingArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      network: pulumi.Input.asInput<String>(map['network']),
      reservedPeeringRanges:
          pulumi.Input.asInput<List<String>>(map['reservedPeeringRanges']),
      service: pulumi.Input.asInput<String>(map['service']),
      updateOnCreationFail:
          pulumi.Input.asOptionalInput<bool>(map['updateOnCreationFail']),
    );
  }
}
