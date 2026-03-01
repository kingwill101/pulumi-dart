// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_pair.dart';

/// Result data returned by getKeyPairs.
class GetKeyPairsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyPairFingerPrint;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetKeyPairsPair> pairs;

  /// Creates a new [GetKeyPairsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyPairFingerPrint] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pairs] Required.
  GetKeyPairsResult({
    required this.id,
    required this.ids,
    this.keyPairFingerPrint,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'keyPairFingerPrint': ?keyPairFingerPrint,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pairs': pulumi.Input.encodeList<GetKeyPairsPair, Map<String, dynamic>>(pairs, (value) => value.toMap()),
    };
  }

  factory GetKeyPairsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyPairFingerPrint: map['keyPairFingerPrint'] == null ? null : map['keyPairFingerPrint'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pairs: pulumi.Input.decodeList<GetKeyPairsPair>(map['pairs'], (value) => GetKeyPairsPair.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

