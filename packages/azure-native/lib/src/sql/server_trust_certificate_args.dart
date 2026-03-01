// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_server_trust_certificate_args_doc}
/// The set of arguments for ServerTrustCertificate.
/// {@endtemplate}
/// {@macro pulumi_sql_server_trust_certificate_args_doc}
class ServerTrustCertificateArgs {
  /// Name of of the certificate to upload.
  final pulumi.Input<String>? certificateName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The certificate public blob
  final pulumi.Input<String>? publicBlob;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ServerTrustCertificateArgs].
  /// [certificateName] Name of of the certificate to upload.
  /// [managedInstanceName] The name of the managed instance.
  /// [publicBlob] The certificate public blob
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  ServerTrustCertificateArgs({
    String? certificateName,
    required String managedInstanceName,
    String? publicBlob,
    required String resourceGroupName,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      publicBlob = pulumi.Input.asOptionalInput<String>(publicBlob),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'managedInstanceName': managedInstanceName,
      'publicBlob': ?publicBlob,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ServerTrustCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServerTrustCertificateArgs(
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      publicBlob: map['publicBlob'] == null ? null : map['publicBlob'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

