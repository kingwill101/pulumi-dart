// ignore_for_file: unused_element, unnecessary_cast


class AccessStrategyFailoverAddrPool {
  /// The ID of the address pool in the secondary address pool group.
  final String? addrPoolId;
  /// The weight of the address pool in the secondary address pool group.
  final int? lbaWeight;

  /// Creates a new [AccessStrategyFailoverAddrPool].
  /// [addrPoolId] The ID of the address pool in the secondary address pool group.
  /// [lbaWeight] The weight of the address pool in the secondary address pool group.
  AccessStrategyFailoverAddrPool({
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
      addrPoolId: map['addrPoolId'] == null ? null : map['addrPoolId'] as String,
      lbaWeight: map['lbaWeight'] == null ? null : map['lbaWeight'] as int,
    );
  }
}

