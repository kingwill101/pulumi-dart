import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
enum PermissionModel implements pulumi.PulumiEnum<String> {
  sELFMANAGED("SELF_MANAGED"),
  sERVICEMANAGED("SERVICE_MANAGED");

  const PermissionModel(this.wireValue);
  @override
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
