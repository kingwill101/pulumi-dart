// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_smartcard_acpi.dart';
import 'domain_devices_smartcard_alias.dart';
import 'domain_devices_smartcard_host_cert.dart';
import 'domain_devices_smartcard_passthrough.dart';
import 'domain_devices_smartcard_protocol.dart';

class DomainDevicesSmartcard {
  /// Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  final DomainDevicesSmartcardAcpi? acpi;
  /// Specifies the memory address for the persistent storage device in the guest's address space.
  final Map<String, dynamic>? address;
  /// Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  final DomainDevicesSmartcardAlias? alias;
  /// Specifies the file path to the database to be used by the smartcard.
  final String? database;
  /// Configures the host reference for the smartcard device.
  final bool? host;
  /// Defines the path to the host certificates used for the smartcard.
  final List<DomainDevicesSmartcardHostCert>? hostCerts;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesSmartcardPassthrough? passthrough;
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesSmartcardProtocol? protocol;

  /// Creates a new [DomainDevicesSmartcard].
  /// [acpi] Specifies ACPI configuration for the persistent storage device, adapting its behavior in power management scenarios.
  /// [address] Specifies the memory address for the persistent storage device in the guest's address space.
  /// [alias] Configures the alias for the persistent storage device, allowing for easier identification within the domain.
  /// [database] Specifies the file path to the database to be used by the smartcard.
  /// [host] Configures the host reference for the smartcard device.
  /// [hostCerts] Defines the path to the host certificates used for the smartcard.
  /// [passthrough] Defines the source settings for the EGD backend.
  /// [protocol] Sets the protocol type for the EGD backend.
  DomainDevicesSmartcard({
    this.acpi,
    this.address,
    this.alias,
    this.database,
    this.host,
    this.hostCerts,
    this.passthrough,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acpi': ?acpi == null ? null : acpi!.toMap(),
      'address': ?address,
      'alias': ?alias == null ? null : alias!.toMap(),
      'database': ?database,
      'host': ?host,
      'hostCerts': ?hostCerts == null ? null : pulumi.Input.encodeList<DomainDevicesSmartcardHostCert, Map<String, dynamic>>(hostCerts!, (value) => value.toMap()),
      'passthrough': ?passthrough == null ? null : passthrough!.toMap(),
      'protocol': ?protocol == null ? null : protocol!.toMap(),
    };
  }

  factory DomainDevicesSmartcard.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcard(
      acpi: map['acpi'] == null ? null : DomainDevicesSmartcardAcpi.fromMap((map['acpi'] as Map).cast<String, dynamic>()),
      address: map['address'] == null ? null : (map['address'] as Map).cast<String, dynamic>(),
      alias: map['alias'] == null ? null : DomainDevicesSmartcardAlias.fromMap((map['alias'] as Map).cast<String, dynamic>()),
      database: map['database'] == null ? null : map['database'] as String,
      host: map['host'] == null ? null : map['host'] as bool,
      hostCerts: map['hostCerts'] == null ? null : pulumi.Input.decodeList<DomainDevicesSmartcardHostCert>(map['hostCerts'], (value) => DomainDevicesSmartcardHostCert.fromMap((value as Map).cast<String, dynamic>())),
      passthrough: map['passthrough'] == null ? null : DomainDevicesSmartcardPassthrough.fromMap((map['passthrough'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : DomainDevicesSmartcardProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
    );
  }
}

