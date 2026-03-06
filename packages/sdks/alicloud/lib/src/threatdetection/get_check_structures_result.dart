// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_structures_structure.dart';

/// Result data returned by getCheckStructures.
class GetCheckStructuresResult {
  final int? currentPage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Check Structure IDs.
  final List<String> ids;
  final String? lang;
  final String? outputFile;
  /// A list of Check Structure Entries. Each element contains the following attributes:
  final List<GetCheckStructuresStructure> structures;
  final List<String>? taskSources;

  /// Creates a new [GetCheckStructuresResult].
  /// [currentPage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Check Structure IDs.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [structures] A list of Check Structure Entries. Each element contains the following attributes:
  /// [taskSources] Optional.
  const GetCheckStructuresResult({
    this.currentPage,
    required this.id,
    required this.ids,
    this.lang,
    this.outputFile,
    required this.structures,
    this.taskSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'structures': pulumi.Input.encodeList<GetCheckStructuresStructure, Map<String, dynamic>>(structures, (value) => value.toMap()),
      'taskSources': ?taskSources,
    };
  }

  factory GetCheckStructuresResult.fromMap(Map<String, dynamic> map) {
    return GetCheckStructuresResult(
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      structures: pulumi.Input.decodeList<GetCheckStructuresStructure>(map['structures']!, (value) => GetCheckStructuresStructure.fromMap((value as Map).cast<String, dynamic>())),
      taskSources: (() { final guardedValue = map['taskSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

