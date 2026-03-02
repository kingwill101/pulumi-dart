// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_custom_error_response.dart';
import 'sub_resource_response.dart';

/// Http listener of an application gateway.
class ApplicationGatewayHttpListenerResponse {
  /// Custom error configurations of the HTTP listener.
  final pulumi.Input<List<ApplicationGatewayCustomErrorResponse>>? customErrorConfigurations;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResourceResponse>? firewallPolicy;
  /// Frontend IP configuration resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? frontendPort;
  /// Host name of HTTP listener.
  final pulumi.Input<String>? hostName;
  /// List of Host names for HTTP Listener that allows special wildcard characters as well.
  final pulumi.Input<List<String>>? hostNames;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the HTTP listener that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Protocol of the HTTP listener.
  final pulumi.Input<String>? protocol;
  /// The provisioning state of the HTTP listener resource.
  final pulumi.Input<String> provisioningState;
  /// Applicable only if protocol is https. Enables SNI for multi-hosting.
  final pulumi.Input<bool>? requireServerNameIndication;
  /// SSL certificate resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? sslCertificate;
  /// SSL profile resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? sslProfile;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomErrorResponse>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendPort, (value) => value.toMap()),
      'hostName': ?hostName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'requireServerNameIndication': ?requireServerNameIndication,
      'sslCertificate': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sslCertificate, (value) => value.toMap()),
      'sslProfile': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sslProfile, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayHttpListenerResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListenerResponse(
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: (map['etag'] as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResourceResponse.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (SubResourceResponse.fromMap((map['frontendPort'] as Map).cast<String, dynamic>())).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      requireServerNameIndication: map['requireServerNameIndication'] == null ? null : (map['requireServerNameIndication'] as bool).input(),
      sslCertificate: map['sslCertificate'] == null ? null : (SubResourceResponse.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>())).input(),
      sslProfile: map['sslProfile'] == null ? null : (SubResourceResponse.fromMap((map['sslProfile'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

