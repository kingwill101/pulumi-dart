/// Root squash defines how root users on clients are mapped to the NFS share.
enum ShareRootSquash {
  noRootSquash("NoRootSquash"),
  rootSquash("RootSquash"),
  allSquash("AllSquash");

  const ShareRootSquash(this.value);
  final String value;

  static ShareRootSquash fromValue(String value) {
    for (final item in ShareRootSquash.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareRootSquash value: $value');
  }
}

