/// Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
enum ApplicationSharingPolicy {
  valuePersonal("Personal"),
  valueShared("Shared");

  const ApplicationSharingPolicy(this.value);
  final String value;

  static ApplicationSharingPolicy fromValue(String value) {
    for (final item in ApplicationSharingPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationSharingPolicy value: $value');
  }
}

