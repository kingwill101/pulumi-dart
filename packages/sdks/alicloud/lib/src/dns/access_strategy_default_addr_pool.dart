// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessStrategyDefaultAddrPool {
  /// The ID of the address pool in the primary address pool group.
  final pulumi.Input<String> addrPoolId;
  /// The weight of the address pool in the primary address pool group.
  final pulumi.Input<int>? lbaWeight;

  /// Creates a new [AccessStrategyDefaultAddrPool].
  /// [addrPoolId] The ID of the address pool in the primary address pool group.
  /// [lbaWeight] The weight of the address pool in the primary address pool group.
  AccessStrategyDefaultAddrPool({
    required this.addrPoolId,
    this.lbaWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrPoolId': addrPoolId,
      'lbaWeight': ?lbaWeight,
    };
  }

  factory AccessStrategyDefaultAddrPool.fromMap(Map<String, dynamic> map) {
    return AccessStrategyDefaultAddrPool(
      addrPoolId: pulumi.Input.fromValue(map['addrPoolId'] as String),
      lbaWeight: (() { final guardedValue = map['lbaWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

