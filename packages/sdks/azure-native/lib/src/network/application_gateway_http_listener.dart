// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_custom_error.dart';
import 'sub_resource.dart';

/// Http listener of an application gateway.
class ApplicationGatewayHttpListener {
  /// Custom error configurations of the HTTP listener.
  final pulumi.Input<List<ApplicationGatewayCustomError>>? customErrorConfigurations;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResource>? firewallPolicy;
  /// Frontend IP configuration resource of an application gateway.
  final pulumi.Input<SubResource>? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final pulumi.Input<SubResource>? frontendPort;
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
  /// Applicable only if protocol is https. Enables SNI for multi-hosting.
  final pulumi.Input<bool>? requireServerNameIndication;
  /// SSL certificate resource of an application gateway.
  final pulumi.Input<SubResource>? sslCertificate;
  /// SSL profile resource of the application gateway.
  final pulumi.Input<SubResource>? sslProfile;

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
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomError>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(frontendPort, (value) => value.toMap()),
      'hostName': ?hostName,
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'requireServerNameIndication': ?requireServerNameIndication,
      'sslCertificate': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sslCertificate, (value) => value.toMap()),
      'sslProfile': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sslProfile, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayHttpListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayHttpListener(
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayCustomError>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResource.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResource.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (SubResource.fromMap((map['frontendPort'] as Map).cast<String, dynamic>())).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      requireServerNameIndication: map['requireServerNameIndication'] == null ? null : (map['requireServerNameIndication'] as bool).input(),
      sslCertificate: map['sslCertificate'] == null ? null : (SubResource.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>())).input(),
      sslProfile: map['sslProfile'] == null ? null : (SubResource.fromMap((map['sslProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

