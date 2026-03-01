// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_pool_address.dart';

/// {@template pulumi_dns_address_pool_address_pool_args_doc}
/// The set of arguments for AddressPool.
/// {@endtemplate}
/// {@macro pulumi_dns_address_pool_address_pool_args_doc}
class AddressPoolArgs {
  /// The name of the address pool.
  final pulumi.Input<String> addressPoolName;
  /// The address lists of the Address Pool. See `address` below for details.
  final pulumi.Input<List<AddressPoolAddress>> addresses;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The load balancing policy of the address pool. Valid values:`ALL_RR` or `RATIO`. `ALL_RR`: returns all addresses. `RATIO`: returns addresses by weight.
  final pulumi.Input<String> lbaStrategy;
  /// The type of the address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  final pulumi.Input<String> type;

  /// Creates a new [AddressPoolArgs].
  /// [addressPoolName] The name of the address pool.
  /// [addresses] The address lists of the Address Pool. See `address` below for details.
  /// [instanceId] The ID of the instance.
  /// [lbaStrategy] The load balancing policy of the address pool. Valid values:`ALL_RR` or `RATIO`. `ALL_RR`: returns all addresses. `RATIO`: returns addresses by weight.
  /// [type] The type of the address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  AddressPoolArgs({
    required String addressPoolName,
    required List<AddressPoolAddress> addresses,
    required String instanceId,
    required String lbaStrategy,
    required String type,
  }) :
      addressPoolName = pulumi.Input.asInput<String>(addressPoolName),
      addresses = pulumi.Input.asInput<List<AddressPoolAddress>>(addresses),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      lbaStrategy = pulumi.Input.asInput<String>(lbaStrategy),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPoolName': addressPoolName,
      'addresses': pulumi.Input.mapInputValue<List<AddressPoolAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<AddressPoolAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': instanceId,
      'lbaStrategy': lbaStrategy,
      'type': type,
    };
  }

  factory AddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return AddressPoolArgs(
      addressPoolName: map['addressPoolName'] as String,
      addresses: pulumi.Input.decodeList<AddressPoolAddress>(map['addresses'], (value) => AddressPoolAddress.fromMap((value as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] as String,
      lbaStrategy: map['lbaStrategy'] as String,
      type: map['type'] as String,
    );
  }
}

