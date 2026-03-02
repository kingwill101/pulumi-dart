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
      etag: (map['etag'] as String).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (SubResourceResponse.fromMap((map['frontendPort'] as Map).cast<String, dynamic>())).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sslCertificate: map['sslCertificate'] == null ? null : (SubResourceResponse.fromMap((map['sslCertificate'] as Map).cast<String, dynamic>())).input(),
      sslProfile: map['sslProfile'] == null ? null : (SubResourceResponse.fromMap((map['sslProfile'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

