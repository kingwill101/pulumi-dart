// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_connected_environments_certificate_args_doc}
/// Arguments for getConnectedEnvironmentsCertificate.
/// {@endtemplate}
/// {@macro pulumi_app_get_connected_environments_certificate_args_doc}
class GetConnectedEnvironmentsCertificateArgs {
  /// Name of the Certificate.
  final pulumi.Input<String> certificateName;
  /// Name of the Connected Environment.
  final pulumi.Input<String> connectedEnvironmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectedEnvironmentsCertificateArgs].
  /// [certificateName] Name of the Certificate.
  /// [connectedEnvironmentName] Name of the Connected Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConnectedEnvironmentsCertificateArgs({
    required this.certificateName,
    required this.connectedEnvironmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'connectedEnvironmentName': connectedEnvironmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedEnvironmentsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentsCertificateArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      connectedEnvironmentName: pulumi.Input.fromValue(map['connectedEnvironmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
