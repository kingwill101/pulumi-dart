// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_contract_create_properties.dart';

/// {@template pulumi_apimanagement_workspace_certificate_args_doc}
/// The set of arguments for WorkspaceCertificate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_certificate_args_doc}
class WorkspaceCertificateArgs {
  /// Identifier of the certificate entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? certificateId;
  /// Base 64 encoded certificate using the application/x-pkcs12 representation.
  final pulumi.Input<String>? data;
  /// KeyVault location details of the certificate.
  final pulumi.Input<KeyVaultContractCreateProperties>? keyVault;
  /// Password for the Certificate
  final pulumi.Input<String>? password;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceCertificateArgs].
  /// [certificateId] Identifier of the certificate entity. Must be unique in the current API Management service instance.
  /// [data] Base 64 encoded certificate using the application/x-pkcs12 representation.
  /// [keyVault] KeyVault location details of the certificate.
  /// [password] Password for the Certificate
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceCertificateArgs({
    String? certificateId,
    String? data,
    KeyVaultContractCreateProperties? keyVault,
    String? password,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceId,
  }) :
      certificateId = pulumi.Input.asOptionalInput<String>(certificateId),
      data = pulumi.Input.asOptionalInput<String>(data),
      keyVault = pulumi.Input.asOptionalInput<KeyVaultContractCreateProperties>(keyVault),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': ?certificateId,
      'data': ?data,
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultContractCreateProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceCertificateArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCertificateArgs(
      certificateId: map['certificateId'] == null ? null : map['certificateId'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      keyVault: map['keyVault'] == null ? null : KeyVaultContractCreateProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      password: map['password'] == null ? null : map['password'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

