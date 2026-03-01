// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stores_store.dart';

/// Result data returned by getStores.
class GetStoresResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String project;
  final List<GetStoresStore> stores;

  /// Creates a new [GetStoresResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [project] Required.
  /// [stores] Required.
  GetStoresResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.project,
    required this.stores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'project': project,
      'stores': pulumi.Input.encodeList<GetStoresStore, Map<String, dynamic>>(stores, (value) => value.toMap()),
    };
  }

  factory GetStoresResult.fromMap(Map<String, dynamic> map) {
    return GetStoresResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      project: map['project'] as String,
      stores: pulumi.Input.decodeList<GetStoresStore>(map['stores'], (value) => GetStoresStore.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

