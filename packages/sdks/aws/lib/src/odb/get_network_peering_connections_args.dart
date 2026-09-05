// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_network_peering_connections_get_network_peering_connections_args_doc}
/// Arguments for getNetworkPeeringConnections.
/// {@endtemplate}
/// {@macro pulumi_odb_get_network_peering_connections_get_network_peering_connections_args_doc}
class GetNetworkPeeringConnectionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetNetworkPeeringConnectionsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetNetworkPeeringConnectionsArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetNetworkPeeringConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
