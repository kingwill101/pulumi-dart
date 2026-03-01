// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_backend_emulator_active_pcr_banks.dart';
import 'domain_devices_tpm_backend_emulator_encryption.dart';
import 'domain_devices_tpm_backend_emulator_profile.dart';
import 'domain_devices_tpm_backend_emulator_source.dart';

class DomainDevicesTpmBackendEmulator {
  /// Sets the active PCR (Platform Configuration Register) banks for the emulator TPM backend.
  final DomainDevicesTpmBackendEmulatorActivePcrBanks? activePcrBanks;
  /// Enables or disables debug mode for the emulator TPM backend.
  final double? debug;
  /// Configures encryption settings for the emulator TPM backend.
  final DomainDevicesTpmBackendEmulatorEncryption? encryption;
  /// Configures whether the emulator TPM keeps its state persistent across reboots.
  final String? persistentState;
  /// Sets the profile configuration for the emulator TPM backend.
  final DomainDevicesTpmBackendEmulatorProfile? profile;
  /// Configures the source settings for the emulator TPM backend.
  final DomainDevicesTpmBackendEmulatorSource? source;
  /// Configures the version attributes for the emulator TPM backend.
  final String? version;

  /// Creates a new [DomainDevicesTpmBackendEmulator].
  /// [activePcrBanks] Sets the active PCR (Platform Configuration Register) banks for the emulator TPM backend.
  /// [debug] Enables or disables debug mode for the emulator TPM backend.
  /// [encryption] Configures encryption settings for the emulator TPM backend.
  /// [persistentState] Configures whether the emulator TPM keeps its state persistent across reboots.
  /// [profile] Sets the profile configuration for the emulator TPM backend.
  /// [source] Configures the source settings for the emulator TPM backend.
  /// [version] Configures the version attributes for the emulator TPM backend.
  DomainDevicesTpmBackendEmulator({
    this.activePcrBanks,
    this.debug,
    this.encryption,
    this.persistentState,
    this.profile,
    this.source,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activePcrBanks': ?activePcrBanks == null ? null : activePcrBanks!.toMap(),
      'debug': ?debug,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'persistentState': ?persistentState,
      'profile': ?profile == null ? null : profile!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'version': ?version,
    };
  }

  factory DomainDevicesTpmBackendEmulator.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackendEmulator(
      activePcrBanks: map['activePcrBanks'] == null ? null : DomainDevicesTpmBackendEmulatorActivePcrBanks.fromMap((map['activePcrBanks'] as Map).cast<String, dynamic>()),
      debug: map['debug'] == null ? null : map['debug'] as double,
      encryption: map['encryption'] == null ? null : DomainDevicesTpmBackendEmulatorEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      persistentState: map['persistentState'] == null ? null : map['persistentState'] as String,
      profile: map['profile'] == null ? null : DomainDevicesTpmBackendEmulatorProfile.fromMap((map['profile'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesTpmBackendEmulatorSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

