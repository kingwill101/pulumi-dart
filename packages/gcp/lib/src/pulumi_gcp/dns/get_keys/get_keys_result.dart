// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_keys_key_signing_key/get_keys_key_signing_key.dart';
import '../get_keys_zone_signing_key/get_keys_zone_signing_key.dart';

/// Result data returned by getKeys.
class GetKeysResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Key-signing key (KSK) records. Structure is documented below. Additionally, the DS record is provided:
  final List<GetKeysKeySigningKey> keySigningKeys;
  final String managedZone;
  final String project;

  /// A list of Zone-signing key (ZSK) records. Structure is documented below.
  final List<GetKeysZoneSigningKey> zoneSigningKeys;

  GetKeysResult({
    required this.id,
    required this.keySigningKeys,
    required this.managedZone,
    required this.project,
    required this.zoneSigningKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['keySigningKeys'] =
        pulumi.Input.encodeList<GetKeysKeySigningKey, Map<String, dynamic>>(
            keySigningKeys, (value) => value.toMap());
    map['managedZone'] = managedZone;
    map['project'] = project;
    map['zoneSigningKeys'] =
        pulumi.Input.encodeList<GetKeysZoneSigningKey, Map<String, dynamic>>(
            zoneSigningKeys, (value) => value.toMap());
    return map;
  }

  factory GetKeysResult.fromMap(Map<String, dynamic> map) {
    return GetKeysResult(
      id: map['id'] as String,
      keySigningKeys: pulumi.Input.decodeList<GetKeysKeySigningKey>(
          map['keySigningKeys'],
          (value) => GetKeysKeySigningKey.fromMap(
              (value as Map).cast<String, dynamic>())),
      managedZone: map['managedZone'] as String,
      project: map['project'] as String,
      zoneSigningKeys: pulumi.Input.decodeList<GetKeysZoneSigningKey>(
          map['zoneSigningKeys'],
          (value) => GetKeysZoneSigningKey.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
