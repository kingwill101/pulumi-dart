// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_express_syncs_sync.dart';

/// Result data returned by getExpressSyncs.
class GetExpressSyncsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetExpressSyncsSync> syncs;

  /// Creates a new [GetExpressSyncsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [syncs] Required.
  GetExpressSyncsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.syncs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'syncs': pulumi.Input.encodeList<GetExpressSyncsSync, Map<String, dynamic>>(syncs, (value) => value.toMap()),
    };
  }

  factory GetExpressSyncsResult.fromMap(Map<String, dynamic> map) {
    return GetExpressSyncsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      syncs: pulumi.Input.decodeList<GetExpressSyncsSync>(map['syncs'], (value) => GetExpressSyncsSync.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

