// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_properties.dart';

/// {@template pulumi_deviceprovisioningservices_dps_certificate_args_doc}
/// The set of arguments for DpsCertificate.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_dps_certificate_args_doc}
class DpsCertificateArgs {
  /// The name of the certificate create or update.
  final pulumi.Input<String>? certificateName;
  /// properties of a certificate
  final pulumi.Input<CertificateProperties>? properties;
  /// The name of the provisioning service.
  final pulumi.Input<String> provisioningServiceName;
  /// Resource group identifier.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DpsCertificateArgs].
  /// [certificateName] The name of the certificate create or update.
  /// [properties] properties of a certificate
  /// [provisioningServiceName] The name of the provisioning service.
  /// [resourceGroupName] Resource group identifier.
  DpsCertificateArgs({
    this.certificateName,
    this.properties,
    required this.provisioningServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CertificateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningServiceName': provisioningServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DpsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return DpsCertificateArgs(
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      properties: map['properties'] == null ? null : (CertificateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      provisioningServiceName: (map['provisioningServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

