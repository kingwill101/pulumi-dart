// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_managed_certificate_args_doc}
/// Arguments for getManagedCertificate.
/// {@endtemplate}
/// {@macro pulumi_app_get_managed_certificate_args_doc}
class GetManagedCertificateArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Managed Certificate.
  final pulumi.Input<String> managedCertificateName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedCertificateArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [managedCertificateName] Name of the Managed Certificate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedCertificateArgs({
    required this.environmentName,
    required this.managedCertificateName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'managedCertificateName': managedCertificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedCertificateArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      managedCertificateName: pulumi.Input.fromValue(map['managedCertificateName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

