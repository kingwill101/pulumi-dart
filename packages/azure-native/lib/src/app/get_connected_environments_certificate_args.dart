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
  GetConnectedEnvironmentsCertificateArgs({
    required String certificateName,
    required String connectedEnvironmentName,
    required String resourceGroupName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      connectedEnvironmentName = pulumi.Input.asInput<String>(connectedEnvironmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'connectedEnvironmentName': connectedEnvironmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedEnvironmentsCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentsCertificateArgs(
      certificateName: map['certificateName'] as String,
      connectedEnvironmentName: map['connectedEnvironmentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

