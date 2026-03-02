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
    required this.certificateOrderName,
    this.keyVaultId,
    this.keyVaultSecretName,
    this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

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
      certificateOrderName: (map['certificateOrderName'] as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : (map['keyVaultSecretName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

