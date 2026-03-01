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
  GatewayHostnameConfigurationArgs({
    String? certificateId,
    required String gatewayId,
    String? hcId,
    String? hostname,
    bool? http2Enabled,
    bool? negotiateClientCertificate,
    required String resourceGroupName,
    required String serviceName,
    bool? tls10Enabled,
    bool? tls11Enabled,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      hcId = pulumi.Input.asOptionalInput<String>(hcId),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      http2Enabled = pulumi.Input.asOptionalInput<bool>(http2Enabled),
      negotiateClientCertificate = pulumi.Input.asOptionalInput<bool>(negotiateClientCertificate),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tls10Enabled = pulumi.Input.asOptionalInput<bool>(tls10Enabled),
      tls11Enabled = pulumi.Input.asOptionalInput<bool>(tls11Enabled);

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
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      gatewayId: map['gatewayId'] as String,
      hcId: map['hcId'] == null ? null : map['hcId'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      negotiateClientCertificate: map['negotiateClientCertificate'] == null ? null : map['negotiateClientCertificate'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tls10Enabled: map['tls10Enabled'] == null ? null : map['tls10Enabled'] as bool,
      tls11Enabled: map['tls11Enabled'] == null ? null : map['tls11Enabled'] as bool,
    );
  }
}

