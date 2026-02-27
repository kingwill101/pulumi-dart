// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../crypto_key_version_external_protection_level_options/crypto_key_version_external_protection_level_options.dart';

/// The set of arguments for CryptoKeyVersion.
class CryptoKeyVersionArgs {
  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String> cryptoKey;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionExternalProtectionLevelOptions>?
      externalProtectionLevelOptions;

  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  final pulumi.Input<String>? state;

  CryptoKeyVersionArgs({
    required this.cryptoKey,
    this.externalProtectionLevelOptions,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    final externalProtectionLevelOptionsValue = externalProtectionLevelOptions;
    if (externalProtectionLevelOptionsValue != null) {
      map['externalProtectionLevelOptions'] =
          pulumi.Input.mapOptionalInputValue<
                  CryptoKeyVersionExternalProtectionLevelOptions,
                  Map<String, dynamic>>(
              externalProtectionLevelOptionsValue, (value) => value.toMap());
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory CryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionArgs(
      cryptoKey: pulumi.Input.asInput<String>(map['cryptoKey']),
      externalProtectionLevelOptions: pulumi.Input.asOptionalInput<
              CryptoKeyVersionExternalProtectionLevelOptions>(
          map['externalProtectionLevelOptions']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
    );
  }
}
