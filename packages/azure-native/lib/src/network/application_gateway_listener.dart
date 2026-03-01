// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Listener of an application gateway.
class ApplicationGatewayListener {
  /// Frontend IP configuration resource of an application gateway.
  final SubResource? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final SubResource? frontendPort;
  /// List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  final List<String>? hostNames;
  /// Resource ID.
  final String? id;
  /// Name of the listener that is unique within an Application Gateway.
  final String? name;
  /// Protocol of the listener.
  final String? protocol;
  /// SSL certificate resource of an application gateway.
  final SubResource? sslCertificate;
  /// SSL profile resource of the application gateway.
  final SubResource? sslProfile;

  /// Creates a new [ApplicationGatewayListener].
  /// [frontendIPConfiguration] Frontend IP configuration resource of an application gateway.
  /// [frontendPort] Frontend port resource of an application gateway.
  /// [hostNames] List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  /// [id] Resource ID.
  /// [name] Name of the listener that is unique within an Application Gateway.
  /// [protocol] Protocol of the listener.
  /// [sslCertificate] SSL certificate resource of an application gateway.
  /// [sslProfile] SSL profile resource of the application gateway.
  ApplicationGatewayListener({
    this.frontendIPConfiguration,
    this.frontendPort,
    this.hostNames,
    this.id,
    this.name,
    this.protocol,
    this.sslCertificate,
    this.sslProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': ?frontendPort == null ? null : frontendPort!.toMap(),
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'sslCertificate': ?sslCertificate == null ? null : sslCertificate!.toMap(),
      'sslProfile': ?sslProfile == null ? null : sslProfile!.toMap(),
    };
  }

  factory ApplicationGatewayListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayListener(
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResource.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] == null ? null : SubResource.fromMap((map['frontendPort'] as Map).cast<String, dynamic>()),
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sslCertificate: map['sslCertificate'] == null ? null : SubResource.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>()),
      sslProfile: map['sslProfile'] == null ? null : SubResource.fromMap((map['sslProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

