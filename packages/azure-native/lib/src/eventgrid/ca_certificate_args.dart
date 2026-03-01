// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_ca_certificate_args_doc}
/// The set of arguments for CaCertificate.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_ca_certificate_args_doc}
class CaCertificateArgs {
  /// The CA certificate name.
  final pulumi.Input<String>? caCertificateName;
  /// Description for the CA Certificate resource.
  final pulumi.Input<String>? description;
  /// Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  final pulumi.Input<String>? encodedCertificate;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CaCertificateArgs].
  /// [caCertificateName] The CA certificate name.
  /// [description] Description for the CA Certificate resource.
  /// [encodedCertificate] Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  CaCertificateArgs({
    String? caCertificateName,
    String? description,
    String? encodedCertificate,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      caCertificateName = pulumi.Input.asOptionalInput<String>(caCertificateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      encodedCertificate = pulumi.Input.asOptionalInput<String>(encodedCertificate),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateName': ?caCertificateName,
      'description': ?description,
      'encodedCertificate': ?encodedCertificate,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CaCertificateArgs(
      caCertificateName: map['caCertificateName'] == null ? null : map['caCertificateName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encodedCertificate: map['encodedCertificate'] == null ? null : map['encodedCertificate'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

