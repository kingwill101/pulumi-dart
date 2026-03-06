// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Listener of an application gateway.
class ApplicationGatewayListenerResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Frontend IP configuration resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? frontendPort;
  /// List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  final pulumi.Input<List<String>>? hostNames;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the listener that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Protocol of the listener.
  final pulumi.Input<String>? protocol;
  /// The provisioning state of the listener resource.
  final pulumi.Input<String> provisioningState;
  /// SSL certificate resource of an application gateway.
  final pulumi.Input<SubResourceResponse>? sslCertificate;
  /// SSL profile resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? sslProfile;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
  const ApplicationGatewayListenerResponse({
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
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendPort, (value) => value.toMap()),
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': provisioningState,
      'sslCertificate': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sslCertificate, (value) => value.toMap()),
      'sslProfile': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sslProfile, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayListenerResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayListenerResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      frontendIPConfiguration: (() { final guardedValue = map['frontendIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      sslCertificate: (() { final guardedValue = map['sslCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslProfile: (() { final guardedValue = map['sslProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

