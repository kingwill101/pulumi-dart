// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity {
  /// .
  final String key;

  /// .
  final String operator;

  /// .
  final List<String> values;

  /// Creates a new [GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] .
  /// [operator] .
  /// [values] .
  GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity({
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

  factory GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
