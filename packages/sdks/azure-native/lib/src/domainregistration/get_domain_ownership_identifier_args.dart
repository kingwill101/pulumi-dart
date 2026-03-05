// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainregistration_get_domain_ownership_identifier_args_doc}
/// Arguments for getDomainOwnershipIdentifier.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_get_domain_ownership_identifier_args_doc}
class GetDomainOwnershipIdentifierArgs {
  /// Name of domain.
  final pulumi.Input<String> domainName;
  /// Name of identifier.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainOwnershipIdentifierArgs].
  /// [domainName] Name of domain.
  /// [name] Name of identifier.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetDomainOwnershipIdentifierArgs({
    required this.domainName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainOwnershipIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainOwnershipIdentifierArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

