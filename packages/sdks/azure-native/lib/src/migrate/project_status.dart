import 'package:pulumi/pulumi.dart' as pulumi;

/// Assessment project status.
enum ProjectStatus implements pulumi.PulumiEnum<String> {
  valueActive("Active"),
  valueInactive("Inactive");

  const ProjectStatus(this.wireValue);
  @override
  final String wireValue;

  static ProjectStatus fromValue(String value) {
    for (final item in ProjectStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectStatus value: $value');
  }
}
