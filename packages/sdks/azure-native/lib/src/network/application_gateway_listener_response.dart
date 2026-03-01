// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Listener of an application gateway.
class ApplicationGatewayListenerResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Frontend IP configuration resource of an application gateway.
  final SubResourceResponse? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final SubResourceResponse? frontendPort;
  /// List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  final List<String>? hostNames;
  /// Resource ID.
  final String? id;
  /// Name of the listener that is unique within an Application Gateway.
  final String? name;
  /// Protocol of the listener.
  final String? protocol;
  /// The provisioning state of the listener resource.
  final String provisioningState;
  /// SSL certificate resource of an application gateway.
  final SubResourceResponse? sslCertificate;
  /// SSL profile resource of the application gateway.
  final SubResourceResponse? sslProfile;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayListenerResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfiguration] Frontend IP configuration resource of an application gateway.
  /// [frontendPort] Frontend port resource of an application gateway.
  /// [hostNames] List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  /// [id] Resource ID.
  /// [name] Name of the listener that is unique within an Application Gateway.
  /// [protocol] Protocol of the listener.
  /// [provisioningState] The provisioning state of the listener resource.
  /// [sslCertificate] SSL certificate resource of an application gateway.
  /// [sslProfile] SSL profile resource of the application gateway.
  /// [type] Type of the resource.
  ApplicationGatewayListenerResponse({
    required this.etag,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.hostNames,
    this.id,
    this.name,
    this.protocol,
    required this.provisioningState,
    this.sslCertificate,
    this.sslProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': ?frontendPort == null ? null : frontendPort!.toMap(),
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'sslCertificate': ?sslCertificate == null ? null : sslCertificate!.toMap(),
      'sslProfile': ?sslProfile == null ? null : sslProfile!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayListenerResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayListenerResponse(
      etag: map['etag'] as String,
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] == null ? null : SubResourceResponse.fromMap((map['frontendPort'] as Map).cast<String, dynamic>()),
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      sslCertificate: map['sslCertificate'] == null ? null : SubResourceResponse.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>()),
      sslProfile: map['sslProfile'] == null ? null : SubResourceResponse.fromMap((map['sslProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

