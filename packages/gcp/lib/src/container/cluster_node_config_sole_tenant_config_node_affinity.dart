// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigSoleTenantConfigNodeAffinity {
  /// The default or custom node affinity label key name.
  final String key;

  /// Specifies affinity or anti-affinity. Accepted values are `"IN"` or `"NOT_IN"`
  final String operator;

  /// List of node affinity label values as strings.
  final List<String> values;

  /// Creates a new [ClusterNodeConfigSoleTenantConfigNodeAffinity].
  /// [key] The default or custom node affinity label key name.
  /// [operator] Specifies affinity or anti-affinity. Accepted values are `"IN"` or `"NOT_IN"`
  /// [values] List of node affinity label values as strings.
  ClusterNodeConfigSoleTenantConfigNodeAffinity({
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

  factory ClusterNodeConfigSoleTenantConfigNodeAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigSoleTenantConfigNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
