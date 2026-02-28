// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
/// Arguments for getCryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
class GetCryptoKeyVersionArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> cryptoKeyVersionId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCryptoKeyVersionArgs].
  /// [cryptoKeyId] Required.
  /// [cryptoKeyVersionId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCryptoKeyVersionArgs({
    required String cryptoKeyId,
    required String cryptoKeyVersionId,
    required String keyRingId,
    required String location,
    String? project,
  })  : cryptoKeyId = pulumi.Input.asInput<String>(cryptoKeyId),
        cryptoKeyVersionId = pulumi.Input.asInput<String>(cryptoKeyVersionId),
        keyRingId = pulumi.Input.asInput<String>(keyRingId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    map['cryptoKeyVersionId'] = cryptoKeyVersionId;
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionArgs(
      cryptoKeyId: map['cryptoKeyId'] as String,
      cryptoKeyVersionId: map['cryptoKeyVersionId'] as String,
      keyRingId: map['keyRingId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
