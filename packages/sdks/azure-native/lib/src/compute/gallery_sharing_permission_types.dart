/// This property allows you to specify the permission of sharing gallery. Possible values are: **Private,** **Groups,** **Community.**
enum GallerySharingPermissionTypes {
  private("Private"),
  groups("Groups"),
  community("Community");

  const GallerySharingPermissionTypes(this.value);
  final String value;

  static GallerySharingPermissionTypes fromValue(String value) {
    for (final item in GallerySharingPermissionTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GallerySharingPermissionTypes value: $value');
  }
}

