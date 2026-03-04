// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_znodes_znode.dart';

/// Result data returned by getZnodes.
class GetZnodesResult {
  final String? acceptLanguage;
  final String clusterId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String path;
  final List<GetZnodesZnode> znodes;

  /// Creates a new [GetZnodesResult].
  /// [acceptLanguage] Optional.
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [path] Required.
  /// [znodes] Required.
  GetZnodesResult({
    this.acceptLanguage,
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.path,
    required this.znodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'path': path,
      'znodes': pulumi.Input.encodeList<GetZnodesZnode, Map<String, dynamic>>(
        znodes,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetZnodesResult.fromMap(Map<String, dynamic> map) {
    return GetZnodesResult(
      acceptLanguage: (() {
        final guardedValue = map['acceptLanguage'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      path: map['path'] as String,
      znodes: pulumi.Input.decodeList<GetZnodesZnode>(
        map['znodes']!,
        (value) =>
            GetZnodesZnode.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
