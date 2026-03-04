// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_private_srv_network_address_private_srv_network_address_args_doc}
/// The set of arguments for PrivateSrvNetworkAddress.
/// {@endtemplate}
/// {@macro pulumi_mongodb_private_srv_network_address_private_srv_network_address_args_doc}
class PrivateSrvNetworkAddressArgs {
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// Creates a new [PrivateSrvNetworkAddressArgs].
  /// [dbInstanceId] The instance ID.
  PrivateSrvNetworkAddressArgs({required this.dbInstanceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dbInstanceId': dbInstanceId};
  }

  factory PrivateSrvNetworkAddressArgs.fromMap(Map<String, dynamic> map) {
    return PrivateSrvNetworkAddressArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
    );
  }
}
