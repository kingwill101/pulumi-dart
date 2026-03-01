// ignore_for_file: unused_element, unnecessary_cast


class HybridMonitorSlsTaskSlsProcessConfigGroupBy {
  /// The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  final String? alias;
  /// The name of the key that is used to filter logs imported from Log Service.
  final String? slsKeyName;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigGroupBy].
  /// [alias] The alias of the extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [slsKeyName] The name of the key that is used to filter logs imported from Log Service.
  HybridMonitorSlsTaskSlsProcessConfigGroupBy({
    this.alias,
    this.slsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'slsKeyName': ?slsKeyName,
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfigGroupBy.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfigGroupBy(
      alias: map['alias'] == null ? null : map['alias'] as String,
      slsKeyName: map['slsKeyName'] == null ? null : map['slsKeyName'] as String,
    );
  }
}

