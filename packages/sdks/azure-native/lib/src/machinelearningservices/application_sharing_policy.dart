import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
enum ApplicationSharingPolicy implements pulumi.PulumiEnum<String> {
  personal("Personal"),
  shared("Shared");

  const ApplicationSharingPolicy(this.wireValue);
  @override
  final String wireValue;

  static ApplicationSharingPolicy fromValue(String value) {
    for (final item in ApplicationSharingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationSharingPolicy value: $value');
  }
}
