// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_public_network_address_public_network_address_args_doc}
/// The set of arguments for PublicNetworkAddress.
/// {@endtemplate}
/// {@macro pulumi_mongodb_public_network_address_public_network_address_args_doc}
class PublicNetworkAddressArgs {
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// Creates a new [PublicNetworkAddressArgs].
  /// [dbInstanceId] The instance ID.
  PublicNetworkAddressArgs({
    required pulumi.Output<String> dbInstanceId,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
    };
  }

  factory PublicNetworkAddressArgs.fromMap(Map<String, dynamic> map) {
    return PublicNetworkAddressArgs(
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
    );
  }
}

