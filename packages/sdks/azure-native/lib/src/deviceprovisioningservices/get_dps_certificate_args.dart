// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceprovisioningservices_get_dps_certificate_args_doc}
/// Arguments for getDpsCertificate.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_get_dps_certificate_args_doc}
class GetDpsCertificateArgs {
  /// Name of the certificate to retrieve.
  final pulumi.Input<String> certificateName;
  /// Name of the provisioning service the certificate is associated with.
  final pulumi.Input<String> provisioningServiceName;
  /// Resource group identifier.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDpsCertificateArgs].
  /// [certificateName] Name of the certificate to retrieve.
  /// [provisioningServiceName] Name of the provisioning service the certificate is associated with.
  /// [resourceGroupName] Resource group identifier.
  const GetDpsCertificateArgs({
    required this.certificateName,
    required this.provisioningServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'provisioningServiceName': provisioningServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDpsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetDpsCertificateArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      provisioningServiceName: pulumi.Input.fromValue(map['provisioningServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

