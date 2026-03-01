// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_pair.dart';

/// Result data returned by getKeyPairs.
class GetKeyPairsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyPairName;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetKeyPairsPair> pairs;
  final String version;

  /// Creates a new [GetKeyPairsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyPairName] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pairs] Required.
  /// [version] Required.
  GetKeyPairsResult({
    required this.id,
    required this.ids,
    this.keyPairName,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pairs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyPairName': ?keyPairName,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pairs': pulumi.Input.encodeList<GetKeyPairsPair, Map<String, dynamic>>(pairs, (value) => value.toMap()),
      'version': version,
    };
  }

  factory GetKeyPairsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pairs: pulumi.Input.decodeList<GetKeyPairsPair>(map['pairs'], (value) => GetKeyPairsPair.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

