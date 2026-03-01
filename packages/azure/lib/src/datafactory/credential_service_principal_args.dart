// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_service_principal_service_principal_key.dart';

/// {@template pulumi_datafactory_credential_service_principal_credential_service_principal_args_doc}
/// The set of arguments for CredentialServicePrincipal.
/// {@endtemplate}
/// {@macro pulumi_datafactory_credential_service_principal_credential_service_principal_args_doc}
class CredentialServicePrincipalArgs {
  /// List of tags that can be used for describing the Data Factory Credential.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Credential.
  final pulumi.Input<String>? description;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Client ID of the Service Principal.
  final pulumi.Input<String> servicePrincipalId;
  /// A `service_principal_key` block as defined below.
  final pulumi.Input<CredentialServicePrincipalServicePrincipalKey>? servicePrincipalKey;
  /// The Tenant ID of the Service Principal.
  final pulumi.Input<String> tenantId;

  /// Creates a new [CredentialServicePrincipalArgs].
  /// [annotations] List of tags that can be used for describing the Data Factory Credential.
  /// [dataFactoryId] The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Credential.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  /// [servicePrincipalId] The Client ID of the Service Principal.
  /// [servicePrincipalKey] A `service_principal_key` block as defined below.
  /// [tenantId] The Tenant ID of the Service Principal.
  CredentialServicePrincipalArgs({
    List<String>? annotations,
    required String dataFactoryId,
    String? description,
    String? name,
    required String servicePrincipalId,
    CredentialServicePrincipalServicePrincipalKey? servicePrincipalKey,
    required String tenantId,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      servicePrincipalId = pulumi.Input.asInput<String>(servicePrincipalId),
      servicePrincipalKey = pulumi.Input.asOptionalInput<CredentialServicePrincipalServicePrincipalKey>(servicePrincipalKey),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'name': ?name,
      'servicePrincipalId': servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<CredentialServicePrincipalServicePrincipalKey, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenantId': tenantId,
    };
  }

  factory CredentialServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return CredentialServicePrincipalArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      servicePrincipalId: map['servicePrincipalId'] as String,
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : CredentialServicePrincipalServicePrincipalKey.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
    );
  }
}

