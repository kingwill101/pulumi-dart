// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Listener of an application gateway.
class ApplicationGatewayListener {
  /// Frontend IP configuration resource of an application gateway.
  final pulumi.Input<SubResource>? frontendIPConfiguration;
  /// Frontend port resource of an application gateway.
  final pulumi.Input<SubResource>? frontendPort;
  /// List of Server Name Indications(SNI) for TLS Multi-site Listener that allows special wildcard characters as well.
  final pulumi.Input<List<String>>? hostNames;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the listener that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Protocol of the listener.
  final pulumi.Input<String>? protocol;
  /// SSL certificate resource of an application gateway.
  final pulumi.Input<SubResource>? sslCertificate;
  /// SSL profile resource of the application gateway.
  final pulumi.Input<SubResource>? sslProfile;

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
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(frontendPort, (value) => value.toMap()),
      'hostNames': ?hostNames,
      'id': ?id,
      'name': ?name,
      'protocol': ?protocol,
      'sslCertificate': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sslCertificate, (value) => value.toMap()),
      'sslProfile': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sslProfile, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayListener.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayListener(
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResource.fromMap((map['frontendIPConfiguration']! as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (SubResource.fromMap((map['frontendPort']! as Map).cast<String, dynamic>())).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames']! as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      sslCertificate: map['sslCertificate'] == null ? null : (SubResource.fromMap((map['sslCertificate']! as Map).cast<String, dynamic>())).input(),
      sslProfile: map['sslProfile'] == null ? null : (SubResource.fromMap((map['sslProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

