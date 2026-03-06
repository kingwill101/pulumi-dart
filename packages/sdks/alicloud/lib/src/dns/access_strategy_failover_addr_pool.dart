// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessStrategyFailoverAddrPool {
  /// The ID of the address pool in the secondary address pool group.
  final pulumi.Input<String>? addrPoolId;
  /// The weight of the address pool in the secondary address pool group.
  final pulumi.Input<int>? lbaWeight;

  /// Creates a new [AccessStrategyFailoverAddrPool].
  /// [addrPoolId] The ID of the address pool in the secondary address pool group.
  /// [lbaWeight] The weight of the address pool in the secondary address pool group.
  const AccessStrategyFailoverAddrPool({
    this.addrPoolId,
    this.lbaWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrPoolId': ?addrPoolId,
      'lbaWeight': ?lbaWeight,
    };
  }

  factory AccessStrategyFailoverAddrPool.fromMap(Map<String, dynamic> map) {
    return AccessStrategyFailoverAddrPool(
      addrPoolId: (() { final guardedValue = map['addrPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbaWeight: (() { final guardedValue = map['lbaWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

