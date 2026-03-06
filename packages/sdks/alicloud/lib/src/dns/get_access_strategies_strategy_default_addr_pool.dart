// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessStrategiesStrategyDefaultAddrPool {
  /// The number of addresses in the address pool.
  final pulumi.Input<int> addrCount;
  /// The ID of the address pool.
  final pulumi.Input<String> addrPoolId;
  /// The weight of the address pool.
  final pulumi.Input<int> lbaWeight;
  /// The name of the address pool.
  final pulumi.Input<String> name;

  /// Creates a new [GetAccessStrategiesStrategyDefaultAddrPool].
  /// [addrCount] The number of addresses in the address pool.
  /// [addrPoolId] The ID of the address pool.
  /// [lbaWeight] The weight of the address pool.
  /// [name] The name of the address pool.
  const GetAccessStrategiesStrategyDefaultAddrPool({
    required this.addrCount,
    required this.addrPoolId,
    required this.lbaWeight,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addrCount': addrCount,
      'addrPoolId': addrPoolId,
      'lbaWeight': lbaWeight,
      'name': name,
    };
  }

  factory GetAccessStrategiesStrategyDefaultAddrPool.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesStrategyDefaultAddrPool(
      addrCount: pulumi.Input.fromValue(map['addrCount'] as int),
      addrPoolId: pulumi.Input.fromValue(map['addrPoolId'] as String),
      lbaWeight: pulumi.Input.fromValue(map['lbaWeight'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

