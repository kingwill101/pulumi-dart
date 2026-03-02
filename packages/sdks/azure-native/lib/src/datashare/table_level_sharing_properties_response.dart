// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Table level sharing properties dto for kusto data set properties
class TableLevelSharingPropertiesResponse {
  /// External tables to be excluded in the data set
  final pulumi.Input<List<String>>? externalTablesToExclude;
  /// External tables to be included in the data set
  final pulumi.Input<List<String>>? externalTablesToInclude;
  /// Materialized views to be excluded in the data set
  final pulumi.Input<List<String>>? materializedViewsToExclude;
  /// Materialized views to be included in the data set
  final pulumi.Input<List<String>>? materializedViewsToInclude;
  /// Tables to be excluded in the data set
  final pulumi.Input<List<String>>? tablesToExclude;
  /// Tables to be included in the data set
  final pulumi.Input<List<String>>? tablesToInclude;

  /// Creates a new [TableLevelSharingPropertiesResponse].
  /// [externalTablesToExclude] External tables to be excluded in the data set
  /// [externalTablesToInclude] External tables to be included in the data set
  /// [materializedViewsToExclude] Materialized views to be excluded in the data set
  /// [materializedViewsToInclude] Materialized views to be included in the data set
  /// [tablesToExclude] Tables to be excluded in the data set
  /// [tablesToInclude] Tables to be included in the data set
  TableLevelSharingPropertiesResponse({
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

  factory TableLevelSharingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TableLevelSharingPropertiesResponse(
      externalTablesToExclude: map['externalTablesToExclude'] == null ? null : ((map['externalTablesToExclude']! as List).cast<String>()).input(),
      externalTablesToInclude: map['externalTablesToInclude'] == null ? null : ((map['externalTablesToInclude']! as List).cast<String>()).input(),
      materializedViewsToExclude: map['materializedViewsToExclude'] == null ? null : ((map['materializedViewsToExclude']! as List).cast<String>()).input(),
      materializedViewsToInclude: map['materializedViewsToInclude'] == null ? null : ((map['materializedViewsToInclude']! as List).cast<String>()).input(),
      tablesToExclude: map['tablesToExclude'] == null ? null : ((map['tablesToExclude']! as List).cast<String>()).input(),
      tablesToInclude: map['tablesToInclude'] == null ? null : ((map['tablesToInclude']! as List).cast<String>()).input(),
    );
  }
}

