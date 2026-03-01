// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_schema.dart';

/// {@template pulumi_ots_search_index_search_index_args_doc}
/// The set of arguments for SearchIndex.
/// {@endtemplate}
/// {@macro pulumi_ots_search_index_search_index_args_doc}
class SearchIndexArgs {
  /// The index name of the OTS Table. If changed, a new index would be created.
  final pulumi.Input<String> indexName;
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String> instanceName;
  /// The schema of the search index. If changed, a new index would be created. See `schema` below.
  final pulumi.Input<List<SearchIndexSchema>> schemas;
  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String> tableName;
  /// The index type of the OTS Table. Specifies the retention period of data in the search index. Unit: seconds. Default value: -1.
  /// If the retention period exceeds the TTL value, OTS automatically deletes expired data.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [SearchIndexArgs].
  /// [indexName] The index name of the OTS Table. If changed, a new index would be created.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [schemas] The schema of the search index. If changed, a new index would be created. See `schema` below.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  /// [timeToLive] The index type of the OTS Table. Specifies the retention period of data in the search index. Unit: seconds. Default value: -1.
  SearchIndexArgs({
    required String indexName,
    required String instanceName,
    required List<SearchIndexSchema> schemas,
    required String tableName,
    int? timeToLive,
  }) :
      indexName = pulumi.Input.asInput<String>(indexName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      schemas = pulumi.Input.asInput<List<SearchIndexSchema>>(schemas),
      tableName = pulumi.Input.asInput<String>(tableName),
      timeToLive = pulumi.Input.asOptionalInput<int>(timeToLive);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
      'instanceName': instanceName,
      'schemas': pulumi.Input.mapInputValue<List<SearchIndexSchema>, List<Map<String, dynamic>>>(schemas, (value) => pulumi.Input.encodeList<SearchIndexSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tableName': tableName,
      'timeToLive': ?timeToLive,
    };
  }

  factory SearchIndexArgs.fromMap(Map<String, dynamic> map) {
    return SearchIndexArgs(
      indexName: map['indexName'] as String,
      instanceName: map['instanceName'] as String,
      schemas: pulumi.Input.decodeList<SearchIndexSchema>(map['schemas'], (value) => SearchIndexSchema.fromMap((value as Map).cast<String, dynamic>())),
      tableName: map['tableName'] as String,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as int,
    );
  }
}

