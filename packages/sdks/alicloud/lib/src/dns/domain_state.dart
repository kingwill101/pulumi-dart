// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// A list of the dns server name.
  final pulumi.Input<List<String>>? dnsServers;
  /// The domain ID.
  final pulumi.Input<String>? domainId;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  final pulumi.Input<String>? groupId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? name;
  /// The Id of resource group which the dns belongs.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [DomainState].
  /// [dnsServers] A list of the dns server name.
  /// [domainId] The domain ID.
  /// [groupId] Id of the group in which the domain will add. If not supplied, then use default group.
  /// [name] Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [resourceGroupId] The Id of resource group which the dns belongs.
  DomainState({
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
  }) :
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'domainId': ?domainId,
      'groupId': ?groupId,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

