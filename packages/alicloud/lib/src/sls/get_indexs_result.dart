// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_indexs_index.dart';

/// Result data returned by getIndexs.
class GetIndexsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Index IDs.
  final List<String> ids;
  /// A list of Index Entries. Each element contains the following attributes:
  final List<GetIndexsIndex> indexs;
  final String logstoreName;
  final String? outputFile;
  final String projectName;

  /// Creates a new [GetIndexsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Index IDs.
  /// [indexs] A list of Index Entries. Each element contains the following attributes:
  /// [logstoreName] Required.
  /// [outputFile] Optional.
  /// [projectName] Required.
  GetIndexsResult({
    required this.id,
    required this.ids,
    required this.indexs,
    required this.logstoreName,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'indexs': pulumi.Input.encodeList<GetIndexsIndex, Map<String, dynamic>>(indexs, (value) => value.toMap()),
      'logstoreName': logstoreName,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetIndexsResult.fromMap(Map<String, dynamic> map) {
    return GetIndexsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      indexs: pulumi.Input.decodeList<GetIndexsIndex>(map['indexs'], (value) => GetIndexsIndex.fromMap((value as Map).cast<String, dynamic>())),
      logstoreName: map['logstoreName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      projectName: map['projectName'] as String,
    );
  }
}

