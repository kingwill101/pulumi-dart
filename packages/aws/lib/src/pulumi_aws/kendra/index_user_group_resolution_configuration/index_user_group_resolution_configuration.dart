// ignore_for_file: unused_element, unnecessary_cast

class IndexUserGroupResolutionConfiguration {
  /// The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are `AWS_SSO` or `NONE`.
  final String userGroupResolutionMode;

  IndexUserGroupResolutionConfiguration({
    required this.userGroupResolutionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userGroupResolutionMode'] = userGroupResolutionMode;
    return map;
  }

  factory IndexUserGroupResolutionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IndexUserGroupResolutionConfiguration(
      userGroupResolutionMode: map['userGroupResolutionMode'] as String,
    );
  }
}
