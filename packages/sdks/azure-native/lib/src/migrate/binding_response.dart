// ignore_for_file: unused_element, unnecessary_cast

import 'cert_response.dart';
import 'port_mapping_response.dart';

/// Binding for a web application.
class BindingResponse {
  /// WebApplication certificate.
  final CertResponse? cert;
  /// Gets or sets the binding host name.
  final String? hostName;
  /// Gets the ID.
  final String id;
  /// Gets or sets the IP Address.
  final String? ipAddress;
  /// Gets or sets the application port.
  final String? port;
  /// WebApplication port mapping.
  final PortMappingResponse? portMapping;
  /// Gets or sets the protocol.
  final String? protocol;

  /// Creates a new [BindingResponse].
  /// [cert] WebApplication certificate.
  /// [hostName] Gets or sets the binding host name.
  /// [id] Gets the ID.
  /// [ipAddress] Gets or sets the IP Address.
  /// [port] Gets or sets the application port.
  /// [portMapping] WebApplication port mapping.
  /// [protocol] Gets or sets the protocol.
  BindingResponse({
    this.cert,
    this.hostName,
    required this.id,
    this.ipAddress,
    this.port,
    this.portMapping,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert == null ? null : cert!.toMap(),
      'hostName': ?hostName,
      'id': id,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'portMapping': ?portMapping == null ? null : portMapping!.toMap(),
      'protocol': ?protocol,
    };
  }

  factory BindingResponse.fromMap(Map<String, dynamic> map) {
    return BindingResponse(
      cert: map['cert'] == null ? null : CertResponse.fromMap((map['cert'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      portMapping: map['portMapping'] == null ? null : PortMappingResponse.fromMap((map['portMapping'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

