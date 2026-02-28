// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_state.dart';
import 'external_protection_level_options.dart';

/// {@template pulumi_cloudkms_v1_crypto_key_version_args_doc}
/// The set of arguments for CryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_crypto_key_version_args_doc}
class CryptoKeyVersionArgs {
  final pulumi.Input<String>? cryptoKeyId;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  final pulumi.Input<ExternalProtectionLevelOptions>?
      externalProtectionLevelOptions;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The current state of the CryptoKeyVersion.
  final pulumi.Input<CryptoKeyVersionState>? state;

  /// Creates a new [CryptoKeyVersionArgs].
  /// [cryptoKeyId] Optional.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [keyRingId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [state] The current state of the CryptoKeyVersion.
  CryptoKeyVersionArgs({
    String? cryptoKeyId,
    ExternalProtectionLevelOptions? externalProtectionLevelOptions,
    required String keyRingId,
    String? location,
    String? project,
    CryptoKeyVersionState? state,
  })  : cryptoKeyId = pulumi.Input.asOptionalInput<String>(cryptoKeyId),
        externalProtectionLevelOptions =
            pulumi.Input.asOptionalInput<ExternalProtectionLevelOptions>(
                externalProtectionLevelOptions),
        keyRingId = pulumi.Input.asInput<String>(keyRingId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        state = pulumi.Input.asOptionalInput<CryptoKeyVersionState>(state);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyIdValue = cryptoKeyId;
    if (cryptoKeyIdValue != null) {
      map['cryptoKeyId'] = cryptoKeyIdValue;
    }
    final externalProtectionLevelOptionsValue = externalProtectionLevelOptions;
    if (externalProtectionLevelOptionsValue != null) {
      map['externalProtectionLevelOptions'] =
          pulumi.Input.mapOptionalInputValue<ExternalProtectionLevelOptions,
                  Map<String, dynamic>>(
              externalProtectionLevelOptionsValue, (value) => value.toMap());
    }
    map['keyRingId'] = keyRingId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          pulumi.Input.mapOptionalInputValue<CryptoKeyVersionState, String>(
              stateValue, (value) => value.value);
    }
    return map;
  }

  factory CryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionArgs(
      cryptoKeyId:
          map['cryptoKeyId'] == null ? null : map['cryptoKeyId'] as String,
      externalProtectionLevelOptions:
          map['externalProtectionLevelOptions'] == null
              ? null
              : ExternalProtectionLevelOptions.fromMap(
                  (map['externalProtectionLevelOptions'] as Map)
                      .cast<String, dynamic>()),
      keyRingId: map['keyRingId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] == null
          ? null
          : CryptoKeyVersionState.fromValue(map['state'] as String),
    );
  }
}
