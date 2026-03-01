// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_app_get_certificate_args_doc}
class GetCertificateArgs {
  /// Name of the Certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateArgs].
  /// [certificateName] Name of the Certificate.
  /// [environmentName] Name of the Managed Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCertificateArgs({
    required pulumi.Output<String> certificateName,
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      certificateName: pulumi.Output.create<String>(map['certificateName'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

