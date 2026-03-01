// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_ca_certificate_args_doc}
/// Arguments for getCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_ca_certificate_args_doc}
class GetCaCertificateArgs {
  /// Name of the CA certificate.
  final pulumi.Input<String> caCertificateName;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCaCertificateArgs].
  /// [caCertificateName] Name of the CA certificate.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetCaCertificateArgs({
    required String caCertificateName,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      caCertificateName = pulumi.Input.asInput<String>(caCertificateName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateName': caCertificateName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCaCertificateArgs(
      caCertificateName: map['caCertificateName'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

