// ignore_for_file: unused_element, unnecessary_cast

class PolicyDns64ConfigScope {
  /// Controls whether DNS64 is enabled globally at the network level.
  final bool? allQueries;

  /// Creates a new [PolicyDns64ConfigScope].
  /// [allQueries] Controls whether DNS64 is enabled globally at the network level.
  PolicyDns64ConfigScope({
    this.allQueries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allQueriesValue = allQueries;
    if (allQueriesValue != null) {
      map['allQueries'] = allQueriesValue;
    }
    return map;
  }

  factory PolicyDns64ConfigScope.fromMap(Map<String, dynamic> map) {
    return PolicyDns64ConfigScope(
      allQueries: map['allQueries'] == null ? null : map['allQueries'] as bool,
    );
  }
}
