// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secondary_indexes_index.dart';

/// Result data returned by getSecondaryIndexes.
class GetSecondaryIndexesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of secondary index IDs.
  final List<String> ids;
  /// A list of indexes. Each element contains the following attributes:
  final List<GetSecondaryIndexesIndex> indexes;
  /// The OTS instance name.
  final String instanceName;
  final String? nameRegex;
  /// A list of secondary index  names.
  final List<String> names;
  final String? outputFile;
  /// The table name of the OTS which could not be changed.
  final String tableName;

  /// Creates a new [GetSecondaryIndexesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of secondary index IDs.
  /// [indexes] A list of indexes. Each element contains the following attributes:
  /// [instanceName] The OTS instance name.
  /// [nameRegex] Optional.
  /// [names] A list of secondary index  names.
  /// [outputFile] Optional.
  /// [tableName] The table name of the OTS which could not be changed.
  GetSecondaryIndexesResult({
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
      'indexes': pulumi.Input.encodeList<GetSecondaryIndexesIndex, Map<String, dynamic>>(indexes, (value) => value.toMap()),
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tableName': tableName,
    };
  }

  factory GetSecondaryIndexesResult.fromMap(Map<String, dynamic> map) {
    return GetSecondaryIndexesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      indexes: pulumi.Input.decodeList<GetSecondaryIndexesIndex>(map['indexes']!, (value) => GetSecondaryIndexesIndex.fromMap((value as Map).cast<String, dynamic>())),
      instanceName: map['instanceName'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tableName: map['tableName'] as String,
    );
  }
}

