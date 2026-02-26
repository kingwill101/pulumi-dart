// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity {
  /// The default or custom node affinity label key name.
  final String key;

  /// Specifies affinity or anti-affinity. Accepted values are `"IN"` or `"NOT_IN"`
  final String operator;

  /// List of node affinity label values as strings.
  final List<String> values;

  ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['operator'] = operator;
    map['values'] = values;
    return map;
  }

  factory ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigSoleTenantConfigNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
