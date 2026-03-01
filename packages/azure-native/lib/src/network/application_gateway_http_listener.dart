// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_custom_error.dart';
import 'sub_resource.dart';

/// Http listener of an application gateway.
class ApplicationGatewayHttpListener {
  /// Custom error configurations of the HTTP listener.
  final List<ApplicationGatewayCustomError>? customErrorConfigurations;
  /// Reference to the FirewallPolicy resource.
  final SubResource? firewallPolicy;
  /// Frontend IP configuration resource of an application gateway.
  final SubResource? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final SubResource? frontendPort;
  /// Host name of HTTP listener.
  final String? hostName;
  /// List of Host names for HTTP Listener that allows special wildcard characters as well.
  final List<String>? hostNames;
  /// Resource ID.
  final String? id;
  /// Name of the HTTP listener that is unique within an Application Gateway.
  final String? name;
  /// Protocol of the HTTP listener.
  final String? protocol;
  /// Applicable only if protocol is https. Enables SNI for multi-hosting.
  final bool? requireServerNameIndication;
  /// SSL certificate resource of an application gateway.
  final SubResource? sslCertificate;
  /// SSL profile resource of the application gateway.
  final SubResource? sslProfile;

  /// Creates a new [ApplicationGatewayHttpListener].
  /// [customErrorConfigurations] Custom error configurations of the HTTP listener.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [frontendIPConfiguration] Frontend IP configuration resource of an application gateway.
  /// [frontendPort] Frontend port resource of an application gateway.
  /// [hostName] Host name of HTTP listener.
  /// [hostNames] List of Host names for HTTP Listener that allows special wildcard characters as well.
  /// [id] Resource ID.
  /// [name] Name of the HTTP listener that is unique within an Application Gateway.
  /// [protocol] Protocol of the HTTP listener.
  /// [requireServerNameIndication] Applicable only if protocol is https. Enables SNI for multi-hosting.
  /// [sslCertificate] SSL certificate resource of an application gateway.
  /// [sslProfile] SSL profile resource of the application gateway.
  ApplicationGatewayHttpListener({
    this.customErrorConfigurations,
    this.firewallPolicy,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.hostName,
    this.hostNames,
    this.id,
    this.name,
    this.protocol,
    this.requireServerNameIndication,
    this.sslCertificate,
    this.sslProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorConfigurations': ?customErrorConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayCustomError, Map<String, dynamic>>(customErrorConfigurations!, (value) => value.toMap()),
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': ?frontendPort == null ? null : frontendPort!.toMap(),
      'hostName': ?hostName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'requireServerNameIndication': ?requireServerNameIndication,
      'sslCertificate': ?sslCertificate == null ? null : sslCertificate!.toMap(),
      'sslProfile': ?sslProfile == null ? null : sslProfile!.toMap(),
    };
  }

  factory ApplicationGatewayHttpListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListener(
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayCustomError>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>())),
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResource.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResource.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] == null ? null : SubResource.fromMap((map['frontendPort'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      requireServerNameIndication: map['requireServerNameIndication'] == null ? null : map['requireServerNameIndication'] as bool,
      sslCertificate: map['sslCertificate'] == null ? null : SubResource.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>()),
      sslProfile: map['sslProfile'] == null ? null : SubResource.fromMap((map['sslProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

