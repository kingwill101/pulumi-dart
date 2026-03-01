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
    required pulumi.Output<String> domainName,
    required pulumi.Output<String> emailServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      emailServiceName: pulumi.Output.create<String>(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

