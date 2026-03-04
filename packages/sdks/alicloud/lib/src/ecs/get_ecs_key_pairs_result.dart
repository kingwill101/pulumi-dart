// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_key_pairs_key_pair.dart';
import 'get_ecs_key_pairs_pair.dart';

/// Result data returned by getEcsKeyPairs.
class GetEcsKeyPairsResult {
  /// The fingerprint of the Key Pair.
  final String? fingerPrint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// (Deprecated since v1.121.0) A list of Ecs Key Pairs. Each element contains the following attributes:
  final List<GetEcsKeyPairsKeyPair> keyPairs;
  final String? nameRegex;

  /// A list of Key Pair names.
  final List<String> names;
  final String? outputFile;

  /// A list of Ecs Key Pairs. Each element contains the following attributes:
  final List<GetEcsKeyPairsPair> pairs;

  /// The ID of the resource group.
  final String? resourceGroupId;

  /// The tags of the Key Pair.
  final Map<String, String>? tags;

  /// Creates a new [GetEcsKeyPairsResult].
  /// [fingerPrint] The fingerprint of the Key Pair.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyPairs] (Deprecated since v1.121.0) A list of Ecs Key Pairs. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Key Pair names.
  /// [outputFile] Optional.
  /// [pairs] A list of Ecs Key Pairs. Each element contains the following attributes:
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tags of the Key Pair.
  GetEcsKeyPairsResult({
    this.fingerPrint,
    required this.id,
    required this.ids,
    required this.keyPairs,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.pairs,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerPrint': ?fingerPrint,
      'id': id,
      'ids': ids,
      'keyPairs':
          pulumi.Input.encodeList<GetEcsKeyPairsKeyPair, Map<String, dynamic>>(
            keyPairs,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pairs':
          pulumi.Input.encodeList<GetEcsKeyPairsPair, Map<String, dynamic>>(
            pairs,
            (value) => value.toMap(),
          ),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsKeyPairsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsKeyPairsResult(
      fingerPrint: (() {
        final guardedValue = map['fingerPrint'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyPairs: pulumi.Input.decodeList<GetEcsKeyPairsKeyPair>(
        map['keyPairs']!,
        (value) => GetEcsKeyPairsKeyPair.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
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
      pairs: pulumi.Input.decodeList<GetEcsKeyPairsPair>(
        map['pairs']!,
        (value) =>
            GetEcsKeyPairsPair.fromMap((value as Map).cast<String, dynamic>()),
      ),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
