import 'package:pulumi/pulumi.dart' as pulumi;

/// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
enum GallerySharingPermissionTypes implements pulumi.PulumiEnum<String> {
  private("Private"),
  groups("Groups"),
  community("Community");

  const GallerySharingPermissionTypes(this.wireValue);
  @override
  final String wireValue;

  static GallerySharingPermissionTypes fromValue(String value) {
    for (final item in GallerySharingPermissionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GallerySharingPermissionTypes value: $value');
  }
}
