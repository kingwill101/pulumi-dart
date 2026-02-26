// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterAuthorizationAdminGroup {
  /// The name of the group, e.g. `my-group@domain.com`.
  final String group;

  AzureClusterAuthorizationAdminGroup({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    return map;
  }

  factory AzureClusterAuthorizationAdminGroup.fromMap(
      Map<String, dynamic> map) {
    return AzureClusterAuthorizationAdminGroup(
      group: map['group'] as String,
    );
  }
}
