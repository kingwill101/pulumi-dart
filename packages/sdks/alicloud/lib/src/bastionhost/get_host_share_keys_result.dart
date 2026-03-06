// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_share_keys_key.dart';

/// Result data returned by getHostShareKeys.
class GetHostShareKeysResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final List<GetHostShareKeysKey> keys;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetHostShareKeysResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [keys] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  const GetHostShareKeysResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    required this.keys,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'keys': pulumi.Input.encodeList<GetHostShareKeysKey, Map<String, dynamic>>(keys, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetHostShareKeysResult.fromMap(Map<String, dynamic> map) {
    return GetHostShareKeysResult(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      keys: pulumi.Input.decodeList<GetHostShareKeysKey>(map['keys']!, (value) => GetHostShareKeysKey.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

