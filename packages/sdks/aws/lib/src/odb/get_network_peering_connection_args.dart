// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_network_peering_connection_get_network_peering_connection_args_doc}
/// Arguments for getNetworkPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_odb_get_network_peering_connection_get_network_peering_connection_args_doc}
class GetNetworkPeeringConnectionArgs {
  /// The unique identifier of the ODB network peering connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNetworkPeeringConnectionArgs].
  /// [id] The unique identifier of the ODB network peering connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetNetworkPeeringConnectionArgs({required this.id, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'region': ?region};
  }

  factory GetNetworkPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
