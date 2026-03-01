// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_rng_backend_egd_protocol.dart';
import 'domain_devices_rng_backend_egd_source.dart';

class DomainDevicesRngBackendEgd {
  /// Sets the protocol type for the EGD backend.
  final DomainDevicesRngBackendEgdProtocol? protocol;
  /// Defines the source settings for the EGD backend.
  final DomainDevicesRngBackendEgdSource? source;

  /// Creates a new [DomainDevicesRngBackendEgd].
  /// [protocol] Sets the protocol type for the EGD backend.
  /// [source] Defines the source settings for the EGD backend.
  DomainDevicesRngBackendEgd({
    this.protocol,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol == null ? null : protocol!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory DomainDevicesRngBackendEgd.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngBackendEgd(
      protocol: map['protocol'] == null ? null : DomainDevicesRngBackendEgdProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : DomainDevicesRngBackendEgdSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

