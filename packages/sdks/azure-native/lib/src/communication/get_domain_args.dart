// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_communication_get_domain_args_doc}
class GetDomainArgs {
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;

  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainArgs].
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDomainArgs({
    required this.domainName,
    required this.emailServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      emailServiceName: pulumi.Input.fromValue(
        map['emailServiceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
