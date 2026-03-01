// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateregistration_app_service_certificate_order_certificate_args_doc}
/// The set of arguments for AppServiceCertificateOrderCertificate.
/// {@endtemplate}
/// {@macro pulumi_certificateregistration_app_service_certificate_order_certificate_args_doc}
class AppServiceCertificateOrderCertificateArgs {
  /// Name of the certificate order.
  final pulumi.Input<String> certificateOrderName;
  /// Key Vault resource Id.
  final pulumi.Input<String>? keyVaultId;
  /// Key Vault secret name.
  final pulumi.Input<String>? keyVaultSecretName;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Name of the certificate.
  final pulumi.Input<String>? name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppServiceCertificateOrderCertificateArgs].
  /// [certificateOrderName] Name of the certificate order.
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Name of the certificate.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tags] Resource tags.
  AppServiceCertificateOrderCertificateArgs({
    required pulumi.Output<String> certificateOrderName,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? keyVaultSecretName,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      certificateOrderName = pulumi.Input.asInput<String>(certificateOrderName),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVaultSecretName = pulumi.Input.asOptionalInput<String>(keyVaultSecretName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateOrderName': certificateOrderName,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AppServiceCertificateOrderCertificateArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceCertificateOrderCertificateArgs(
      certificateOrderName: pulumi.Output.create<String>(map['certificateOrderName'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

