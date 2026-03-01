// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_dns_domain_domain_args_doc}
class DomainArgs {
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  final pulumi.Input<String>? groupId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? name;
  /// The Id of resource group which the dns belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [DomainArgs].
  /// [groupId] Id of the group in which the domain will add. If not supplied, then use default group.
  /// [name] Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [resourceGroupId] The Id of resource group which the dns belongs.
  DomainArgs({
    String? groupId,
    String? name,
    String? resourceGroupId,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
    );
  }
}

