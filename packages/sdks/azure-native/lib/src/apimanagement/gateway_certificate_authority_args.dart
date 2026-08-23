// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_gateway_certificate_authority_args_doc}
/// The set of arguments for GatewayCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_certificate_authority_args_doc}
class GatewayCertificateAuthorityArgs {
  /// Identifier of the certificate entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? certificateId;
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;
  /// Determines whether certificate authority is trusted.
  final pulumi.Input<bool>? isTrusted;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayCertificateAuthorityArgs].
  /// [certificateId] Identifier of the certificate entity. Must be unique in the current API Management service instance.
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [isTrusted] Determines whether certificate authority is trusted.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GatewayCertificateAuthorityArgs({
    this.certificateId,
    required this.gatewayId,
    this.isTrusted,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'gatewayId': gatewayId,
      'isTrusted': ?isTrusted,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GatewayCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GatewayCertificateAuthorityArgs(
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      isTrusted: (() { final guardedValue = map['isTrusted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
