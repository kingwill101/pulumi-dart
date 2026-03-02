// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tables that will be included and excluded in the follower database
class TableLevelSharingProperties {
  /// List of external tables to exclude from the follower database
  final pulumi.Input<List<String>>? externalTablesToExclude;
  /// List of external tables to include in the follower database
  final pulumi.Input<List<String>>? externalTablesToInclude;
  /// List of functions to exclude from the follower database
  final pulumi.Input<List<String>>? functionsToExclude;
  /// List of functions to include in the follower database
  final pulumi.Input<List<String>>? functionsToInclude;
  /// List of materialized views to exclude from the follower database
  final pulumi.Input<List<String>>? materializedViewsToExclude;
  /// List of materialized views to include in the follower database
  final pulumi.Input<List<String>>? materializedViewsToInclude;
  /// List of tables to exclude from the follower database
  final pulumi.Input<List<String>>? tablesToExclude;
  /// List of tables to include in the follower database
  final pulumi.Input<List<String>>? tablesToInclude;

  /// Creates a new [TableLevelSharingProperties].
  /// [externalTablesToExclude] List of external tables to exclude from the follower database
  /// [externalTablesToInclude] List of external tables to include in the follower database
  /// [functionsToExclude] List of functions to exclude from the follower database
  /// [functionsToInclude] List of functions to include in the follower database
  /// [materializedViewsToExclude] List of materialized views to exclude from the follower database
  /// [materializedViewsToInclude] List of materialized views to include in the follower database
  /// [tablesToExclude] List of tables to exclude from the follower database
  /// [tablesToInclude] List of tables to include in the follower database
  TableLevelSharingProperties({
    this.externalTablesToExclude,
    this.externalTablesToInclude,
    this.functionsToExclude,
    this.functionsToInclude,
    this.materializedViewsToExclude,
    this.materializedViewsToInclude,
    this.tablesToExclude,
    this.tablesToInclude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalTablesToExclude': ?externalTablesToExclude,
      'externalTablesToInclude': ?externalTablesToInclude,
      'functionsToExclude': ?functionsToExclude,
      'functionsToInclude': ?functionsToInclude,
      'materializedViewsToExclude': ?materializedViewsToExclude,
      'materializedViewsToInclude': ?materializedViewsToInclude,
      'tablesToExclude': ?tablesToExclude,
      'tablesToInclude': ?tablesToInclude,
    };
  }

  factory TableLevelSharingProperties.fromMap(Map<String, dynamic> map) {
    return TableLevelSharingProperties(
      externalTablesToExclude: map['externalTablesToExclude'] == null ? null : ((map['externalTablesToExclude']! as List).cast<String>()).input(),
      externalTablesToInclude: map['externalTablesToInclude'] == null ? null : ((map['externalTablesToInclude']! as List).cast<String>()).input(),
      functionsToExclude: map['functionsToExclude'] == null ? null : ((map['functionsToExclude']! as List).cast<String>()).input(),
      functionsToInclude: map['functionsToInclude'] == null ? null : ((map['functionsToInclude']! as List).cast<String>()).input(),
      materializedViewsToExclude: map['materializedViewsToExclude'] == null ? null : ((map['materializedViewsToExclude']! as List).cast<String>()).input(),
      materializedViewsToInclude: map['materializedViewsToInclude'] == null ? null : ((map['materializedViewsToInclude']! as List).cast<String>()).input(),
      tablesToExclude: map['tablesToExclude'] == null ? null : ((map['tablesToExclude']! as List).cast<String>()).input(),
      tablesToInclude: map['tablesToInclude'] == null ? null : ((map['tablesToInclude']! as List).cast<String>()).input(),
    );
  }
}

