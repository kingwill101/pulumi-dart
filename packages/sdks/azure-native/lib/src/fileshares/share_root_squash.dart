/// Root squash defines how root users on clients are mapped to the NFS share.
enum ShareRootSquash {
  noRootSquash("NoRootSquash"),
  rootSquash("RootSquash"),
  allSquash("AllSquash");

  const ShareRootSquash(this.wireValue);
  final String wireValue;

  static ShareRootSquash fromValue(String value) {
    for (final item in ShareRootSquash.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareRootSquash value: $value');
  }
}
