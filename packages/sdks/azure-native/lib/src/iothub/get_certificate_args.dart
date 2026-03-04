// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iothub_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_iothub_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of the certificate
  final pulumi.Input<String> certificateName;

  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetCertificateArgs].
  /// [certificateName] The name of the certificate
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  GetCertificateArgs({
    required this.certificateName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
