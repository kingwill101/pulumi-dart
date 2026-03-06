// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkteamMemberDefinitionOidcMemberDefinition {
  /// A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.
  final pulumi.Input<List<String>> groups;

  /// Creates a new [WorkteamMemberDefinitionOidcMemberDefinition].
  /// [groups] A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.
  const WorkteamMemberDefinitionOidcMemberDefinition({
    required this.groups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
    };
  }

  factory WorkteamMemberDefinitionOidcMemberDefinition.fromMap(Map<String, dynamic> map) {
    return WorkteamMemberDefinitionOidcMemberDefinition(
      groups: pulumi.Input.fromValue((map['groups'] as List).cast<String>()),
    );
  }
}

