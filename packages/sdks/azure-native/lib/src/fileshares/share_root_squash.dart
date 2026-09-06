import 'package:pulumi/pulumi.dart' as pulumi;

/// Root squash defines how root users on clients are mapped to the NFS share.
enum ShareRootSquash implements pulumi.PulumiEnum<String> {
  noRootSquash("NoRootSquash"),
  rootSquash("RootSquash"),
  allSquash("AllSquash");

  const ShareRootSquash(this.wireValue);
  @override
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
