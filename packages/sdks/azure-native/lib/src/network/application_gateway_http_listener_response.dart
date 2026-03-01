// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_custom_error_response.dart';
import 'sub_resource_response.dart';

/// Http listener of an application gateway.
class ApplicationGatewayHttpListenerResponse {
  /// Custom error configurations of the HTTP listener.
  final List<ApplicationGatewayCustomErrorResponse>? customErrorConfigurations;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to the FirewallPolicy resource.
  final SubResourceResponse? firewallPolicy;
  /// Frontend IP configuration resource of an application gateway.
  final SubResourceResponse? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final SubResourceResponse? frontendPort;
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
  /// The provisioning state of the HTTP listener resource.
  final String provisioningState;
  /// Applicable only if protocol is https. Enables SNI for multi-hosting.
  final bool? requireServerNameIndication;
  /// SSL certificate resource of an application gateway.
  final SubResourceResponse? sslCertificate;
  /// SSL profile resource of the application gateway.
  final SubResourceResponse? sslProfile;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayHttpListenerResponse].
  /// [customErrorConfigurations] Custom error configurations of the HTTP listener.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [frontendIPConfiguration] Frontend IP configuration resource of an application gateway.
  /// [frontendPort] Frontend port resource of an application gateway.
  /// [hostName] Host name of HTTP listener.
  /// [hostNames] List of Host names for HTTP Listener that allows special wildcard characters as well.
  /// [id] Resource ID.
  /// [name] Name of the HTTP listener that is unique within an Application Gateway.
  /// [protocol] Protocol of the HTTP listener.
  /// [provisioningState] The provisioning state of the HTTP listener resource.
  /// [requireServerNameIndication] Applicable only if protocol is https. Enables SNI for multi-hosting.
  /// [sslCertificate] SSL certificate resource of an application gateway.
  /// [sslProfile] SSL profile resource of the application gateway.
  /// [type] Type of the resource.
  ApplicationGatewayHttpListenerResponse({
    this.customErrorConfigurations,
    required this.etag,
    this.firewallPolicy,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.hostName,
    this.hostNames,
    this.id,
    this.name,
    this.protocol,
    required this.provisioningState,
    this.requireServerNameIndication,
    this.sslCertificate,
    this.sslProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorConfigurations': ?customErrorConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayCustomErrorResponse, Map<String, dynamic>>(customErrorConfigurations!, (value) => value.toMap()),
      'etag': etag,
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': ?frontendPort == null ? null : frontendPort!.toMap(),
      'hostName': ?hostName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'requireServerNameIndication': ?requireServerNameIndication,
      'sslCertificate': ?sslCertificate == null ? null : sslCertificate!.toMap(),
      'sslProfile': ?sslProfile == null ? null : sslProfile!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayHttpListenerResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListenerResponse(
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResourceResponse.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] == null ? null : SubResourceResponse.fromMap((map['frontendPort'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      requireServerNameIndication: map['requireServerNameIndication'] == null ? null : map['requireServerNameIndication'] as bool,
      sslCertificate: map['sslCertificate'] == null ? null : SubResourceResponse.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>()),
      sslProfile: map['sslProfile'] == null ? null : SubResourceResponse.fromMap((map['sslProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

