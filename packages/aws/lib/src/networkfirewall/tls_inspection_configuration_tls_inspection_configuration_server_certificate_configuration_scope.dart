// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_destination.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_destination_port.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_source.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope_source_port.dart';

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope {
  /// Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Ports below for details.
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort>?
      destinationPorts;

  /// Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination>
      destinations;

  /// Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). Network Firewall currently supports TCP only. Valid values: `6`
  final List<int> protocols;

  /// Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Ports below for details.
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort>?
      sourcePorts;

  /// Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource>?
      sources;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope].
  /// [destinationPorts] Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Ports below for details.
  /// [destinations] Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details.
  /// [protocols] Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). Network Firewall currently supports TCP only. Valid values: `6`
  /// [sourcePorts] Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Ports below for details.
  /// [sources] Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope({
    this.destinationPorts,
    required this.destinations,
    required this.protocols,
    this.sourcePorts,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationPortsValue = destinationPorts;
    if (destinationPortsValue != null) {
      map['destinationPorts'] = pulumi.Input.encodeList<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort,
          Map<String,
              dynamic>>(destinationPortsValue, (value) => value.toMap());
    }
    map['destinations'] = pulumi.Input.encodeList<
        TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    map['protocols'] = protocols;
    final sourcePortsValue = sourcePorts;
    if (sourcePortsValue != null) {
      map['sourcePorts'] = pulumi.Input.encodeList<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort,
          Map<String, dynamic>>(sourcePortsValue, (value) => value.toMap());
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = pulumi.Input.encodeList<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource,
          Map<String, dynamic>>(sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope(
      destinationPorts: map['destinationPorts'] == null
          ? null
          : pulumi.Input.decodeList<
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort>(
              map['destinationPorts'],
              (value) =>
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort
                      .fromMap((value as Map).cast<String, dynamic>())),
      destinations: pulumi.Input.decodeList<
              TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination>(
          map['destinations'],
          (value) =>
              TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination
                  .fromMap((value as Map).cast<String, dynamic>())),
      protocols: (map['protocols'] as List).cast<int>(),
      sourcePorts: map['sourcePorts'] == null
          ? null
          : pulumi.Input.decodeList<
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort>(
              map['sourcePorts'],
              (value) =>
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort
                      .fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource>(
              map['sources'],
              (value) =>
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
