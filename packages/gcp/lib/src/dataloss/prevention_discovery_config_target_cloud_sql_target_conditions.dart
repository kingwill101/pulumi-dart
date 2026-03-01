// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetCloudSqlTargetConditions {
  /// Database engines that should be profiled. Optional. Defaults to ALL_SUPPORTED_DATABASE_ENGINES if unspecified.
  /// Each value may be one of: `ALL_SUPPORTED_DATABASE_ENGINES`, `MYSQL`, `POSTGRES`.
  final List<String>? databaseEngines;
  /// Data profiles will only be generated for the database resource types specified in this field. If not specified, defaults to [DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES].
  /// Each value may be one of: `DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES`, `DATABASE_RESOURCE_TYPE_TABLE`.
  final List<String>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetConditions].
  /// [databaseEngines] Database engines that should be profiled. Optional. Defaults to ALL_SUPPORTED_DATABASE_ENGINES if unspecified.
  /// [types] Data profiles will only be generated for the database resource types specified in this field. If not specified, defaults to [DATABASE_RESOURCE_TYPE_ALL_SUPPORTED_TYPES].
  PreventionDiscoveryConfigTargetCloudSqlTargetConditions({
    this.databaseEngines,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseEngines': ?databaseEngines,
      'types': ?types,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetConditions(
      databaseEngines: map['databaseEngines'] == null ? null : (map['databaseEngines'] as List).cast<String>(),
      types: map['types'] == null ? null : (map['types'] as List).cast<String>(),
    );
  }
}

