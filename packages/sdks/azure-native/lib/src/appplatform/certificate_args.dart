// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_certificate_properties.dart';

/// {@template pulumi_appplatform_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_appplatform_certificate_args_doc}
class CertificateArgs {
  /// The name of the certificate resource.
  final pulumi.Input<String>? certificateName;
  /// Properties of the certificate resource payload.
  final pulumi.Input<ContentCertificateProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [CertificateArgs].
  /// [certificateName] The name of the certificate resource.
  /// [properties] Properties of the certificate resource payload.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  CertificateArgs({
    this.certificateName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ContentCertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      properties: map['properties'] == null ? null : (ContentCertificateProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

