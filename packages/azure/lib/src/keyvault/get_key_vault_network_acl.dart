// ignore_for_file: unused_element, unnecessary_cast


class GetKeyVaultNetworkAcl {
  final String bypass;
  final String defaultAction;
  final List<String> ipRules;
  final List<String> virtualNetworkSubnetIds;

  /// Creates a new [GetKeyVaultNetworkAcl].
  /// [bypass] Required.
  /// [defaultAction] Required.
  /// [ipRules] Required.
  /// [virtualNetworkSubnetIds] Required.
  GetKeyVaultNetworkAcl({
    required this.bypass,
    required this.defaultAction,
    required this.ipRules,
    required this.virtualNetworkSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': bypass,
      'defaultAction': defaultAction,
      'ipRules': ipRules,
      'virtualNetworkSubnetIds': virtualNetworkSubnetIds,
    };
  }

  factory GetKeyVaultNetworkAcl.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultNetworkAcl(
      bypass: map['bypass'] as String,
      defaultAction: map['defaultAction'] as String,
      ipRules: (map['ipRules'] as List).cast<String>(),
      virtualNetworkSubnetIds: (map['virtualNetworkSubnetIds'] as List).cast<String>(),
    );
  }
}

