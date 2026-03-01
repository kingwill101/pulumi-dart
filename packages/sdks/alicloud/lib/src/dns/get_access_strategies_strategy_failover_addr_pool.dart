// ignore_for_file: unused_element, unnecessary_cast


class GetAccessStrategiesStrategyFailoverAddrPool {
  /// The number of addresses in the address pool.
  final int addrCount;
  /// The ID of the address pool.
  final String addrPoolId;
  /// The weight of the address pool.
  final int lbaWeight;
  /// The name of the address pool.
  final String name;

  /// Creates a new [GetAccessStrategiesStrategyFailoverAddrPool].
  /// [addrCount] The number of addresses in the address pool.
  /// [addrPoolId] The ID of the address pool.
  /// [lbaWeight] The weight of the address pool.
  /// [name] The name of the address pool.
  GetAccessStrategiesStrategyFailoverAddrPool({
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

  factory GetAccessStrategiesStrategyFailoverAddrPool.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesStrategyFailoverAddrPool(
      addrCount: map['addrCount'] as int,
      addrPoolId: map['addrPoolId'] as String,
      lbaWeight: map['lbaWeight'] as int,
      name: map['name'] as String,
    );
  }
}

