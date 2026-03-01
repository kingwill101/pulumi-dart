// ignore_for_file: unused_element, unnecessary_cast


/// Table level sharing properties dto for kusto data set properties
class TableLevelSharingProperties {
  /// External tables to be excluded in the data set
  final List<String>? externalTablesToExclude;
  /// External tables to be included in the data set
  final List<String>? externalTablesToInclude;
  /// Materialized views to be excluded in the data set
  final List<String>? materializedViewsToExclude;
  /// Materialized views to be included in the data set
  final List<String>? materializedViewsToInclude;
  /// Tables to be excluded in the data set
  final List<String>? tablesToExclude;
  /// Tables to be included in the data set
  final List<String>? tablesToInclude;

  /// Creates a new [TableLevelSharingProperties].
  /// [externalTablesToExclude] External tables to be excluded in the data set
  /// [externalTablesToInclude] External tables to be included in the data set
  /// [materializedViewsToExclude] Materialized views to be excluded in the data set
  /// [materializedViewsToInclude] Materialized views to be included in the data set
  /// [tablesToExclude] Tables to be excluded in the data set
  /// [tablesToInclude] Tables to be included in the data set
  TableLevelSharingProperties({
    this.externalTablesToExclude,
    this.externalTablesToInclude,
    this.materializedViewsToExclude,
    this.materializedViewsToInclude,
    this.tablesToExclude,
    this.tablesToInclude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTablesToExclude': ?externalTablesToExclude,
      'externalTablesToInclude': ?externalTablesToInclude,
      'materializedViewsToExclude': ?materializedViewsToExclude,
      'materializedViewsToInclude': ?materializedViewsToInclude,
      'tablesToExclude': ?tablesToExclude,
      'tablesToInclude': ?tablesToInclude,
    };
  }

  factory TableLevelSharingProperties.fromMap(Map<String, dynamic> map) {
    return TableLevelSharingProperties(
      externalTablesToExclude: map['externalTablesToExclude'] == null ? null : (map['externalTablesToExclude'] as List).cast<String>(),
      externalTablesToInclude: map['externalTablesToInclude'] == null ? null : (map['externalTablesToInclude'] as List).cast<String>(),
      materializedViewsToExclude: map['materializedViewsToExclude'] == null ? null : (map['materializedViewsToExclude'] as List).cast<String>(),
      materializedViewsToInclude: map['materializedViewsToInclude'] == null ? null : (map['materializedViewsToInclude'] as List).cast<String>(),
      tablesToExclude: map['tablesToExclude'] == null ? null : (map['tablesToExclude'] as List).cast<String>(),
      tablesToInclude: map['tablesToInclude'] == null ? null : (map['tablesToInclude'] as List).cast<String>(),
    );
  }
}

