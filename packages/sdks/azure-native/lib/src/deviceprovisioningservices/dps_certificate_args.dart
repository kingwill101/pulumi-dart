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
  const DpsCertificateArgs({
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
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningServiceName: pulumi.Input.fromValue(map['provisioningServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

