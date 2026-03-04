// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainregistration_domain_ownership_identifier_args_doc}
/// The set of arguments for DomainOwnershipIdentifier.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_domain_ownership_identifier_args_doc}
class DomainOwnershipIdentifierArgs {
  /// Name of domain.
  final pulumi.Input<String> domainName;

  /// Kind of resource.
  final pulumi.Input<String>? kind;

  /// Name of identifier.
  final pulumi.Input<String>? name;

  /// Ownership Id.
  final pulumi.Input<String>? ownershipId;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DomainOwnershipIdentifierArgs].
  /// [domainName] Name of domain.
  /// [kind] Kind of resource.
  /// [name] Name of identifier.
  /// [ownershipId] Ownership Id.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  DomainOwnershipIdentifierArgs({
    required this.domainName,
    this.kind,
    this.name,
    this.ownershipId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'kind': ?kind,
      'name': ?name,
      'ownershipId': ?ownershipId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DomainOwnershipIdentifierArgs.fromMap(Map<String, dynamic> map) {
    return DomainOwnershipIdentifierArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownershipId: (() {
        final guardedValue = map['ownershipId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
