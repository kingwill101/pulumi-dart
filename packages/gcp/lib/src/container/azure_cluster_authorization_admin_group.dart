// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterAuthorizationAdminGroup {
  /// The name of the group, e.g. `my-group@domain.com`.
  final String group;

  /// Creates a new [AzureClusterAuthorizationAdminGroup].
  /// [group] The name of the group, e.g. `my-group@domain.com`.
  AzureClusterAuthorizationAdminGroup({required this.group});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'group': group};
  }

  factory AzureClusterAuthorizationAdminGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureClusterAuthorizationAdminGroup(group: map['group'] as String);
  }
}
