// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aad_get_domain_service_args_doc}
/// Arguments for getDomainService.
/// {@endtemplate}
/// {@macro pulumi_aad_get_domain_service_args_doc}
class GetDomainServiceArgs {
  /// The name of the domain service.
  final pulumi.Input<String> domainServiceName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainServiceArgs].
  /// [domainServiceName] The name of the domain service.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetDomainServiceArgs({
    required pulumi.Output<String> domainServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      domainServiceName = pulumi.Input.asInput<String>(domainServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainServiceName': domainServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainServiceArgs(
      domainServiceName: pulumi.Output.create<String>(map['domainServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

