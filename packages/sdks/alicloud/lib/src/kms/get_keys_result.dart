// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_keys_key.dart';

/// Result data returned by getKeys.
class GetKeysResult {
  final String? descriptionRegex;
  final bool? enableDetails;
  final String? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of KMS key IDs.
  final List<String> ids;

  /// A list of KMS keys. Each element contains the following attributes:
  final List<GetKeysKey> keys;
  final String? outputFile;

  /// Status of the key. Possible values: `Enabled`, `Disabled` and `PendingDeletion`.
  final String? status;

  /// Creates a new [GetKeysResult].
  /// [descriptionRegex] Optional.
  /// [enableDetails] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of KMS key IDs.
  /// [keys] A list of KMS keys. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [status] Status of the key. Possible values: `Enabled`, `Disabled` and `PendingDeletion`.
  GetKeysResult({
    this.descriptionRegex,
    this.enableDetails,
    this.filters,
    required this.id,
    required this.ids,
    required this.keys,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'enableDetails': ?enableDetails,
      'filters': ?filters,
      'id': id,
      'ids': ids,
      'keys': pulumi.Input.encodeList<GetKeysKey, Map<String, dynamic>>(
        keys,
        (value) => value.toMap(),
      ),
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetKeysResult.fromMap(Map<String, dynamic> map) {
    return GetKeysResult(
      descriptionRegex: (() {
        final guardedValue = map['descriptionRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keys: pulumi.Input.decodeList<GetKeysKey>(
        map['keys']!,
        (value) => GetKeysKey.fromMap((value as Map).cast<String, dynamic>()),
      ),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
