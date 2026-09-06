import 'package:pulumi/pulumi.dart' as pulumi;

/// Lock mode.
enum AssignmentLockMode implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueAllResourcesReadOnly("AllResourcesReadOnly"),
  valueAllResourcesDoNotDelete("AllResourcesDoNotDelete");

  const AssignmentLockMode(this.wireValue);
  @override
  final String wireValue;

  static AssignmentLockMode fromValue(String value) {
    for (final item in AssignmentLockMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentLockMode value: $value');
  }
}
