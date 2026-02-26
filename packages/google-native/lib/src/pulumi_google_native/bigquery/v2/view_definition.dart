// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'user_defined_function_resource.dart';

class ViewDefinition {
  /// [Required] A query that BigQuery executes when the view is referenced.
  final String? query;

  /// True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/
  final bool? useExplicitColumnNames;

  /// Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.
  final bool? useLegacySql;

  /// Describes user-defined function resources used in the query.
  final List<UserDefinedFunctionResource>? userDefinedFunctionResources;

  ViewDefinition({
    this.query,
    this.useExplicitColumnNames,
    this.useLegacySql,
    this.userDefinedFunctionResources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    final useExplicitColumnNamesValue = useExplicitColumnNames;
    if (useExplicitColumnNamesValue != null) {
      map['useExplicitColumnNames'] = useExplicitColumnNamesValue;
    }
    final useLegacySqlValue = useLegacySql;
    if (useLegacySqlValue != null) {
      map['useLegacySql'] = useLegacySqlValue;
    }
    final userDefinedFunctionResourcesValue = userDefinedFunctionResources;
    if (userDefinedFunctionResourcesValue != null) {
      map['userDefinedFunctionResources'] =
          Input.encodeList<UserDefinedFunctionResource, Map<String, dynamic>>(
              userDefinedFunctionResourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ViewDefinition.fromMap(Map<String, dynamic> map) {
    return ViewDefinition(
      query: map['query'] == null ? null : map['query'] as String,
      useExplicitColumnNames: map['useExplicitColumnNames'] == null
          ? null
          : map['useExplicitColumnNames'] as bool,
      useLegacySql:
          map['useLegacySql'] == null ? null : map['useLegacySql'] as bool,
      userDefinedFunctionResources: map['userDefinedFunctionResources'] == null
          ? null
          : Input.decodeList<UserDefinedFunctionResource>(
              map['userDefinedFunctionResources'],
              (value) => UserDefinedFunctionResource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
