// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterAuthorizationAdminGroup {
  /// The name of the group, e.g. `my-group@domain.com`.
  final String group;

  AwsClusterAuthorizationAdminGroup({
    required this.group,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    return map;
  }

  factory AwsClusterAuthorizationAdminGroup.fromMap(Map<String, dynamic> map) {
    return AwsClusterAuthorizationAdminGroup(
      group: map['group'] as String,
    );
  }
}
