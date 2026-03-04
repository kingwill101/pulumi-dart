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

  factory TableLevelSharingPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableLevelSharingPropertiesResponse(
      externalTablesToExclude: (() {
        final guardedValue = map['externalTablesToExclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      externalTablesToInclude: (() {
        final guardedValue = map['externalTablesToInclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      materializedViewsToExclude: (() {
        final guardedValue = map['materializedViewsToExclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      materializedViewsToInclude: (() {
        final guardedValue = map['materializedViewsToInclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tablesToExclude: (() {
        final guardedValue = map['tablesToExclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tablesToInclude: (() {
        final guardedValue = map['tablesToInclude'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
