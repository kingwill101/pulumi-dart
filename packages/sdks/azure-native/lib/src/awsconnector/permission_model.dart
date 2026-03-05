/// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
enum PermissionModel {
  sELFMANAGED("SELF_MANAGED"),
  sERVICEMANAGED("SERVICE_MANAGED");

  const PermissionModel(this.wireValue);
  final String wireValue;

  static PermissionModel fromValue(String value) {
    for (final item in PermissionModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PermissionModel value: $value');
  }
}

