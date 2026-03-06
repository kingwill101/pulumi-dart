// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_destination.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_destination_port.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_source.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_source_port.dart';

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope {
  /// Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Ports below for details.
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort>>? destinationPorts;
  /// Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination>> destinations;
  /// Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). Network Firewall currently supports TCP only. Valid values: `6`
  final pulumi.Input<List<int>> protocols;
  /// Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Ports below for details.
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort>>? sourcePorts;
  /// Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource>>? sources;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope].
  /// [destinationPorts] Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Ports below for details.
  /// [destinations] Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  /// [protocols] Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). Network Firewall currently supports TCP only. Valid values: `6`
  /// [sourcePorts] Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Ports below for details.
  /// [sources] Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  const TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope({
    this.destinationPorts,
    required this.destinations,
    required this.protocols,
    this.sourcePorts,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPorts': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort>, List<Map<String, dynamic>>>(destinationPorts, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinations': pulumi.Input.mapInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocols': protocols,
      'sourcePorts': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort>, List<Map<String, dynamic>>>(sourcePorts, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope(
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort>(guardedValue, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination>(map['destinations']!, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination.fromMap((value as Map).cast<String, dynamic>()))),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<int>()),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort>(guardedValue, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource>(guardedValue, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

