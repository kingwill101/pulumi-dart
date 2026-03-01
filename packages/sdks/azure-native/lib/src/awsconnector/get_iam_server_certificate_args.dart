// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_server_certificate_args_doc}
/// Arguments for getIamServerCertificate.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_server_certificate_args_doc}
class GetIamServerCertificateArgs {
  /// Name of IamServerCertificate
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamServerCertificateArgs].
  /// [name] Name of IamServerCertificate
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamServerCertificateArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetIamServerCertificateArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

