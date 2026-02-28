// ignore_for_file: unused_element, unnecessary_cast

class WorkteamMemberDefinitionOidcMemberDefinition {
  /// A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.
  final List<String> groups;

  /// Creates a new [WorkteamMemberDefinitionOidcMemberDefinition].
  /// [groups] A list of comma separated strings that identifies user groups in your OIDC IdP. Each user group is made up of a group of private workers.
  WorkteamMemberDefinitionOidcMemberDefinition({
    required this.groups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groups'] = groups;
    return map;
  }

  factory WorkteamMemberDefinitionOidcMemberDefinition.fromMap(
      Map<String, dynamic> map) {
    return WorkteamMemberDefinitionOidcMemberDefinition(
      groups: (map['groups'] as List).cast<String>(),
    );
  }
}
