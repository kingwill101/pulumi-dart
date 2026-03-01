// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_web_certificate_args_doc}
class CertificateArgs {
  /// CNAME of the certificate to be issued via free certificate
  final pulumi.Input<String>? canonicalName;
  /// Method of domain validation for free cert
  final pulumi.Input<String>? domainValidationMethod;
  /// Host names the certificate applies to.
  final pulumi.Input<List<String>>? hostNames;
  /// Key Vault Csm resource Id.
  final pulumi.Input<String>? keyVaultId;
  /// Key Vault secret name.
  final pulumi.Input<String>? keyVaultSecretName;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Name of the certificate.
  final pulumi.Input<String>? name;
  /// Certificate password.
  final pulumi.Input<String>? password;
  /// Pfx blob.
  final pulumi.Input<String>? pfxBlob;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID of the associated App Service plan, formatted as: "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
  final pulumi.Input<String>? serverFarmId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [canonicalName] CNAME of the certificate to be issued via free certificate
  /// [domainValidationMethod] Method of domain validation for free cert
  /// [hostNames] Host names the certificate applies to.
  /// [keyVaultId] Key Vault Csm resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Name of the certificate.
  /// [password] Certificate password.
  /// [pfxBlob] Pfx blob.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [serverFarmId] Resource ID of the associated App Service plan, formatted as: "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
  /// [tags] Resource tags.
  CertificateArgs({
    String? canonicalName,
    String? domainValidationMethod,
    List<String>? hostNames,
    String? keyVaultId,
    String? keyVaultSecretName,
    String? kind,
    String? location,
    String? name,
    String? password,
    String? pfxBlob,
    required String resourceGroupName,
    String? serverFarmId,
    Map<String, String>? tags,
  }) :
      canonicalName = pulumi.Input.asOptionalInput<String>(canonicalName),
      domainValidationMethod = pulumi.Input.asOptionalInput<String>(domainValidationMethod),
      hostNames = pulumi.Input.asOptionalInput<List<String>>(hostNames),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVaultSecretName = pulumi.Input.asOptionalInput<String>(keyVaultSecretName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      pfxBlob = pulumi.Input.asOptionalInput<String>(pfxBlob),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverFarmId = pulumi.Input.asOptionalInput<String>(serverFarmId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalName': ?canonicalName,
      'domainValidationMethod': ?domainValidationMethod,
      'hostNames': ?hostNames,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'resourceGroupName': resourceGroupName,
      'serverFarmId': ?serverFarmId,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      canonicalName: map['canonicalName'] == null ? null : map['canonicalName'] as String,
      domainValidationMethod: map['domainValidationMethod'] == null ? null : map['domainValidationMethod'] as String,
      hostNames: map['hostNames'] == null ? null : (map['hostNames'] as List).cast<String>(),
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : map['keyVaultSecretName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      pfxBlob: map['pfxBlob'] == null ? null : map['pfxBlob'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverFarmId: map['serverFarmId'] == null ? null : map['serverFarmId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

