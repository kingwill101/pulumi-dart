// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_custom_error.dart';
import 'sub_resource.dart';

/// Http listener of an application gateway.
class ApplicationGatewayHttpListener {
  /// Custom error configurations of the HTTP listener.
  final pulumi.Input<List<ApplicationGatewayCustomError>?>? customErrorConfigurations;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResource?>? firewallPolicy;
  /// Frontend IP configuration resource of an application gateway.
  final pulumi.Input<SubResource?>? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final pulumi.Input<SubResource?>? frontendPort;
  /// Host name of HTTP listener.
  final pulumi.Input<String?>? hostName;
  /// List of Host names for HTTP Listener that allows special wildcard characters as well.
  final pulumi.Input<List<String>?>? hostNames;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Name of the HTTP listener that is unique within an Application Gateway.
  final pulumi.Input<String?>? name;
  /// Protocol of the HTTP listener.
  final pulumi.Input<dynamic>? protocol;
  /// Applicable only if protocol is https. Enables SNI for multi-hosting.
  final pulumi.Input<bool?>? requireServerNameIndication;
  /// SSL certificate resource of an application gateway.
  final pulumi.Input<SubResource?>? sslCertificate;
  /// SSL profile resource of the application gateway.
  final pulumi.Input<SubResource?>? sslProfile;

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
  const ApplicationGatewayHttpListener({
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
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayCustomError>(guardedValue, (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendIPConfiguration: (() { final guardedValue = map['frontendIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      requireServerNameIndication: (() { final guardedValue = map['requireServerNameIndication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslCertificate: (() { final guardedValue = map['sslCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslProfile: (() { final guardedValue = map['sslProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
