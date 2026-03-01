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
  GatewayCertificateAuthorityArgs({
    pulumi.Output<String>? certificateId,
    required pulumi.Output<String> gatewayId,
    pulumi.Output<bool>? isTrusted,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      isTrusted = pulumi.Input.asOptionalInput<bool>(isTrusted),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      certificateId: map['certificateId'] == null ? null : pulumi.Output.create<String>(map['certificateId'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      isTrusted: map['isTrusted'] == null ? null : pulumi.Output.create<bool>(map['isTrusted'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

