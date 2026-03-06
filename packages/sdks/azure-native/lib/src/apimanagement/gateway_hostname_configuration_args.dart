// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_gateway_hostname_configuration_args_doc}
/// The set of arguments for GatewayHostnameConfiguration.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_hostname_configuration_args_doc}
class GatewayHostnameConfigurationArgs {
  /// Identifier of Certificate entity that will be used for TLS connection establishment
  final pulumi.Input<String>? certificateId;
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;
  /// Gateway hostname configuration identifier. Must be unique in the scope of parent Gateway entity.
  final pulumi.Input<String>? hcId;
  /// Hostname value. Supports valid domain name, partial or full wildcard
  final pulumi.Input<String>? hostname;
  /// Specifies if HTTP/2.0 is supported
  final pulumi.Input<bool>? http2Enabled;
  /// Determines whether gateway requests client certificate
  final pulumi.Input<bool>? negotiateClientCertificate;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Specifies if TLS 1.0 is supported
  final pulumi.Input<bool>? tls10Enabled;
  /// Specifies if TLS 1.1 is supported
  final pulumi.Input<bool>? tls11Enabled;

  /// Creates a new [GatewayHostnameConfigurationArgs].
  /// [certificateId] Identifier of Certificate entity that will be used for TLS connection establishment
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [hcId] Gateway hostname configuration identifier. Must be unique in the scope of parent Gateway entity.
  /// [hostname] Hostname value. Supports valid domain name, partial or full wildcard
  /// [http2Enabled] Specifies if HTTP/2.0 is supported
  /// [negotiateClientCertificate] Determines whether gateway requests client certificate
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tls10Enabled] Specifies if TLS 1.0 is supported
  /// [tls11Enabled] Specifies if TLS 1.1 is supported
  const GatewayHostnameConfigurationArgs({
    this.certificateId,
    required this.gatewayId,
    this.hcId,
    this.hostname,
    this.http2Enabled,
    this.negotiateClientCertificate,
    required this.resourceGroupName,
    required this.serviceName,
    this.tls10Enabled,
    this.tls11Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'gatewayId': gatewayId,
      'hcId': ?hcId,
      'hostname': ?hostname,
      'http2Enabled': ?http2Enabled,
      'negotiateClientCertificate': ?negotiateClientCertificate,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tls10Enabled': ?tls10Enabled,
      'tls11Enabled': ?tls11Enabled,
    };
  }

  factory GatewayHostnameConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GatewayHostnameConfigurationArgs(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      hcId: (() { final guardedValue = map['hcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http2Enabled: (() { final guardedValue = map['http2Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negotiateClientCertificate: (() { final guardedValue = map['negotiateClientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tls10Enabled: (() { final guardedValue = map['tls10Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tls11Enabled: (() { final guardedValue = map['tls11Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

