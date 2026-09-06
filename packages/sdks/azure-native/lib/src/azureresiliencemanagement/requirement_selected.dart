import 'package:pulumi/pulumi.dart' as pulumi;

/// Option specified by customer under high availability section of goal template
enum RequirementSelected implements pulumi.PulumiEnum<String> {
  notRequired("NotRequired"),
  required("Required");

  const RequirementSelected(this.wireValue);
  @override
  final String wireValue;

  static RequirementSelected fromValue(String value) {
    for (final item in RequirementSelected.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequirementSelected value: $value');
  }
}
