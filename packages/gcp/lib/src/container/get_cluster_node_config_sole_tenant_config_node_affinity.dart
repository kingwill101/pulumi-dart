// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigSoleTenantConfigNodeAffinity {
  /// .
  final String key;

  /// .
  final String operator;

  /// .
  final List<String> values;

  /// Creates a new [GetClusterNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] .
  /// [operator] .
  /// [values] .
  GetClusterNodeConfigSoleTenantConfigNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory GetClusterNodeConfigSoleTenantConfigNodeAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigSoleTenantConfigNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
