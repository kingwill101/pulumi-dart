// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_site_certificate_args_doc}
/// Arguments for getSiteCertificate.
/// {@endtemplate}
/// {@macro pulumi_web_get_site_certificate_args_doc}
class GetSiteCertificateArgs {
  /// Name of the certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSiteCertificateArgs].
  /// [certificateName] Name of the certificate.
  /// [name] Name of the site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSiteCertificateArgs({
    required String certificateName,
    required String name,
    required String resourceGroupName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSiteCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteCertificateArgs(
      certificateName: map['certificateName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

