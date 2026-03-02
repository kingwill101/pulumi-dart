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
      cert: map['cert'] == null ? null : (CertResponse.fromMap((map['cert']! as Map).cast<String, dynamic>())).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      id: (map['id'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      portMapping: map['portMapping'] == null ? null : (PortMappingResponse.fromMap((map['portMapping']! as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

