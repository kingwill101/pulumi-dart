// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_response.dart';
import 'port_mapping_response.dart';

/// Binding for a web application.
class BindingResponse {
  /// WebApplication certificate.
  final pulumi.Input<CertResponse>? cert;
  /// Gets or sets the binding host name.
  final pulumi.Input<String>? hostName;
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets the IP Address.
  final pulumi.Input<String>? ipAddress;
  /// Gets or sets the application port.
  final pulumi.Input<String>? port;
  /// WebApplication port mapping.
  final pulumi.Input<PortMappingResponse>? portMapping;
  /// Gets or sets the protocol.
  final pulumi.Input<String>? protocol;

  /// Creates a new [BindingResponse].
  /// [cert] WebApplication certificate.
  /// [hostName] Gets or sets the binding host name.
  /// [id] Gets the ID.
  /// [ipAddress] Gets or sets the IP Address.
  /// [port] Gets or sets the application port.
  /// [portMapping] WebApplication port mapping.
  /// [protocol] Gets or sets the protocol.
  const BindingResponse({
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
      'cert': ?pulumi.Input.mapOptionalInputValue<CertResponse, Map<String, dynamic>>(cert, (value) => value.toMap()),
      'hostName': ?hostName,
      'id': id,
      'ipAddress': ?ipAddress,
      'port': ?port,
      'portMapping': ?pulumi.Input.mapOptionalInputValue<PortMappingResponse, Map<String, dynamic>>(portMapping, (value) => value.toMap()),
      'protocol': ?protocol,
    };
  }

  factory BindingResponse.fromMap(Map<String, dynamic> map) {
    return BindingResponse(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portMapping: (() { final guardedValue = map['portMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortMappingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
