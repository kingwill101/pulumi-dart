// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_gateway_certificate_authority_args_doc}
/// Arguments for getGatewayCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_gateway_certificate_authority_args_doc}
class GetGatewayCertificateAuthorityArgs {
  /// Identifier of the certificate entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String> certificateId;
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGatewayCertificateAuthorityArgs].
  /// [certificateId] Identifier of the certificate entity. Must be unique in the current API Management service instance.
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetGatewayCertificateAuthorityArgs({
    required pulumi.Output<String> certificateId,
    required pulumi.Output<String> gatewayId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'gatewayId': gatewayId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetGatewayCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayCertificateAuthorityArgs(
      certificateId: pulumi.Output.create<String>(map['certificateId'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

