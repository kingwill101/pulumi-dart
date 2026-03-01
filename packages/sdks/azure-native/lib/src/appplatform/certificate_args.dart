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
    pulumi.Output<String>? certificateName,
    pulumi.Output<ContentCertificateProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      properties = pulumi.Input.asOptionalInput<ContentCertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ContentCertificateProperties>(ContentCertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

