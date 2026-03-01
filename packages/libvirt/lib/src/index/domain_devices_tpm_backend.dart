// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_backend_emulator.dart';
import 'domain_devices_tpm_backend_external.dart';
import 'domain_devices_tpm_backend_passthrough.dart';

class DomainDevicesTpmBackend {
  /// Configures the emulator backend for the TPM device, which handles its operations.
  final DomainDevicesTpmBackendEmulator? emulator;
  /// Configures external settings for the TPM backend to use an external TPM device.
  final DomainDevicesTpmBackendExternal? external;
  /// Configures the backend for the TPM device to be in passthrough mode, allowing direct access to the host's TPM functionality.
  final DomainDevicesTpmBackendPassthrough? passthrough;

  /// Creates a new [DomainDevicesTpmBackend].
  /// [emulator] Configures the emulator backend for the TPM device, which handles its operations.
  /// [external] Configures external settings for the TPM backend to use an external TPM device.
  /// [passthrough] Configures the backend for the TPM device to be in passthrough mode, allowing direct access to the host's TPM functionality.
  DomainDevicesTpmBackend({
    this.emulator,
    this.external,
    this.passthrough,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emulator': ?emulator == null ? null : emulator!.toMap(),
      'external': ?external == null ? null : external!.toMap(),
      'passthrough': ?passthrough == null ? null : passthrough!.toMap(),
    };
  }

  factory DomainDevicesTpmBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpmBackend(
      emulator: map['emulator'] == null ? null : DomainDevicesTpmBackendEmulator.fromMap((map['emulator'] as Map).cast<String, dynamic>()),
      external: map['external'] == null ? null : DomainDevicesTpmBackendExternal.fromMap((map['external'] as Map).cast<String, dynamic>()),
      passthrough: map['passthrough'] == null ? null : DomainDevicesTpmBackendPassthrough.fromMap((map['passthrough'] as Map).cast<String, dynamic>()),
    );
  }
}

