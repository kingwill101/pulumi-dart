// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_batch_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_batch_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of the Batch account.
  final pulumi.Input<String> accountName;
  /// The name of the Batch certificate.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where this Batch account exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateArgs].
  /// [accountName] The name of the Batch account.
  /// [name] The name of the Batch certificate.
  /// [resourceGroupName] The Name of the Resource Group where this Batch account exists.
  GetCertificateArgs({
    required String accountName,
    required String name,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      accountName: map['accountName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

