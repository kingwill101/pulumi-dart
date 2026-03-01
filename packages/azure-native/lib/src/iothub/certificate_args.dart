// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_properties.dart';

/// {@template pulumi_iothub_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_iothub_certificate_args_doc}
class CertificateArgs {
  /// The name of the certificate
  final pulumi.Input<String>? certificateName;
  /// The description of an X509 CA Certificate.
  final pulumi.Input<CertificateProperties>? properties;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [CertificateArgs].
  /// [certificateName] The name of the certificate
  /// [properties] The description of an X509 CA Certificate.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  CertificateArgs({
    String? certificateName,
    CertificateProperties? properties,
    required String resourceGroupName,
    required String resourceName,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      properties = pulumi.Input.asOptionalInput<CertificateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      properties: map['properties'] == null ? null : CertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

