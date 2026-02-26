// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes {
  /// A set of BiqQuery table types
  /// Each value may be one of: `BIG_QUERY_TABLE_TYPE_TABLE`, `BIG_QUERY_TABLE_TYPE_EXTERNAL_BIG_LAKE`.
  final List<String>? types;

  PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes({
    this.types,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = typesValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetConditionsTypes(
      types:
          map['types'] == null ? null : (map['types'] as List).cast<String>(),
    );
  }
}
