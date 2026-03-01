// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_pool_address.dart';

/// Input properties used for looking up and filtering AddressPool resources.
class AddressPoolState {
  /// The name of the address pool.
  final pulumi.Input<String>? addressPoolName;
  /// The address lists of the Address Pool. See `address` below for details.
  final pulumi.Input<List<AddressPoolAddress>>? addresses;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The load balancing policy of the address pool. Valid values:`ALL_RR` or `RATIO`. `ALL_RR`: returns all addresses. `RATIO`: returns addresses by weight.
  final pulumi.Input<String>? lbaStrategy;
  /// The type of the address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  final pulumi.Input<String>? type;

  /// Creates a new [AddressPoolState].
  /// [addressPoolName] The name of the address pool.
  /// [addresses] The address lists of the Address Pool. See `address` below for details.
  /// [instanceId] The ID of the instance.
  /// [lbaStrategy] The load balancing policy of the address pool. Valid values:`ALL_RR` or `RATIO`. `ALL_RR`: returns all addresses. `RATIO`: returns addresses by weight.
  /// [type] The type of the address pool. Valid values: `IPV4`, `IPV6`, `DOMAIN`.
  AddressPoolState({
    pulumi.Output<String>? addressPoolName,
    pulumi.Output<List<AddressPoolAddress>>? addresses,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? lbaStrategy,
    pulumi.Output<String>? type,
  }) :
      addressPoolName = pulumi.Input.asOptionalInput<String>(addressPoolName),
      addresses = pulumi.Input.asOptionalInput<List<AddressPoolAddress>>(addresses),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      lbaStrategy = pulumi.Input.asOptionalInput<String>(lbaStrategy),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPoolName': ?addressPoolName,
      'addresses': ?pulumi.Input.mapOptionalInputValue<List<AddressPoolAddress>, List<Map<String, dynamic>>>(addresses, (value) => pulumi.Input.encodeList<AddressPoolAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': ?instanceId,
      'lbaStrategy': ?lbaStrategy,
      'type': ?type,
    };
  }

  factory AddressPoolState.fromMap(Map<String, dynamic> map) {
    return AddressPoolState(
      addressPoolName: map['addressPoolName'] == null ? null : pulumi.Output.create<String>(map['addressPoolName'] as String),
      addresses: map['addresses'] == null ? null : pulumi.Output.create<List<AddressPoolAddress>>(pulumi.Input.decodeList<AddressPoolAddress>(map['addresses'], (value) => AddressPoolAddress.fromMap((value as Map).cast<String, dynamic>()))),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      lbaStrategy: map['lbaStrategy'] == null ? null : pulumi.Output.create<String>(map['lbaStrategy'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

