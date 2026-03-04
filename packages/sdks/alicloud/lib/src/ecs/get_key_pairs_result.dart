// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_key_pair.dart';
import 'get_key_pairs_pair.dart';

/// Result data returned by getKeyPairs.
class GetKeyPairsResult {
  /// Finger print of the key pair.
  final String? fingerPrint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of key pairs. Each element contains the following attributes:
  final List<GetKeyPairsKeyPair> keyPairs;
  final String? nameRegex;

  /// A list of key pair names.
  final List<String> names;
  final String? outputFile;
  final List<GetKeyPairsPair> pairs;

  /// The Id of resource group.
  final String? resourceGroupId;

  /// (Optional, Available in v1.66.0+) A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetKeyPairsResult].
  /// [fingerPrint] Finger print of the key pair.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyPairs] A list of key pairs. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of key pair names.
  /// [outputFile] Optional.
  /// [pairs] Required.
  /// [resourceGroupId] The Id of resource group.
  /// [tags] (Optional, Available in v1.66.0+) A mapping of tags to assign to the resource.
  GetKeyPairsResult({
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
          pulumi.Input.encodeList<GetKeyPairsKeyPair, Map<String, dynamic>>(
            keyPairs,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pairs': pulumi.Input.encodeList<GetKeyPairsPair, Map<String, dynamic>>(
        pairs,
        (value) => value.toMap(),
      ),
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetKeyPairsResult.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsResult(
      fingerPrint: (() {
        final guardedValue = map['fingerPrint'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyPairs: pulumi.Input.decodeList<GetKeyPairsKeyPair>(
        map['keyPairs']!,
        (value) =>
            GetKeyPairsKeyPair.fromMap((value as Map).cast<String, dynamic>()),
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
      pairs: pulumi.Input.decodeList<GetKeyPairsPair>(
        map['pairs']!,
        (value) =>
            GetKeyPairsPair.fromMap((value as Map).cast<String, dynamic>()),
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
