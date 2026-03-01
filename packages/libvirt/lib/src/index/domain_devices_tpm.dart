// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_tpm_acpi.dart';
import 'domain_devices_tpm_alias.dart';
import 'domain_devices_tpm_backend.dart';

class DomainDevicesTpm {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesTpmAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesTpmAlias? alias;
  /// Configures the backend settings for the TPM device, determining its operation mode.
  final DomainDevicesTpmBackend? backend;
  /// Defines the model of the TPM device to be used by the domain.
  final String? model;

  /// Creates a new [DomainDevicesTpm].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [backend] Configures the backend settings for the TPM device, determining its operation mode.
  /// [model] Defines the model of the TPM device to be used by the domain.
  DomainDevicesTpm({
    this.acpi,
    this.address,
    this.alias,
    this.backend,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'backend': ?backend == null ? null : backend!.toMap(),
      'model': ?model,
    };
  }

  factory DomainDevicesTpm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesTpm(
      acpi: map['acpi'] == null ? null : DomainDevicesTpmAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesTpmAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      backend: map['backend'] == null ? null : DomainDevicesTpmBackend.fromMap((map['backend'] as Map).cast<String, dynamic>()),
      model: map['model'] == null ? null : map['model'] as String,
    );
  }
}

