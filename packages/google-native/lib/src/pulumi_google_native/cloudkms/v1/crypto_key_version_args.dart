// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_state.dart';
import 'external_protection_level_options.dart';

/// The set of arguments for CryptoKeyVersion.
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

  CryptoKeyVersionArgs({
    this.cryptoKeyId,
    this.externalProtectionLevelOptions,
    required this.keyRingId,
    this.location,
    this.project,
    this.state,
  });

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
      cryptoKeyId: pulumi.Input.asOptionalInput<String>(map['cryptoKeyId']),
      externalProtectionLevelOptions:
          pulumi.Input.asOptionalInput<ExternalProtectionLevelOptions>(
              map['externalProtectionLevelOptions']),
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      state: pulumi.Input.asOptionalInput<CryptoKeyVersionState>(map['state']),
    );
  }
}
