// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_search_indexes_index.dart';

/// Result data returned by getSearchIndexes.
class GetSearchIndexesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of search index IDs.
  final List<String> ids;
  /// A list of indexes. Each element contains the following attributes:
  final List<GetSearchIndexesIndex> indexes;
  /// The OTS instance name.
  final String instanceName;
  final String? nameRegex;
  /// A list of search index  names.
  final List<String> names;
  final String? outputFile;
  /// The table name of the OTS which could not be changed.
  final String tableName;

  /// Creates a new [GetSearchIndexesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of search index IDs.
  /// [indexes] A list of indexes. Each element contains the following attributes:
  /// [instanceName] The OTS instance name.
  /// [nameRegex] Optional.
  /// [names] A list of search index  names.
  /// [outputFile] Optional.
  /// [tableName] The table name of the OTS which could not be changed.
  GetSearchIndexesResult({
    required this.id,
    required this.ids,
    required this.indexes,
    required this.instanceName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'indexes': pulumi.Input.encodeList<GetSearchIndexesIndex, Map<String, dynamic>>(indexes, (value) => value.toMap()),
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tableName': tableName,
    };
  }

  factory GetSearchIndexesResult.fromMap(Map<String, dynamic> map) {
    return GetSearchIndexesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      indexes: pulumi.Input.decodeList<GetSearchIndexesIndex>(map['indexes'], (value) => GetSearchIndexesIndex.fromMap((value as Map).cast<String, dynamic>())),
      instanceName: map['instanceName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      tableName: map['tableName'] as String,
    );
  }
}

