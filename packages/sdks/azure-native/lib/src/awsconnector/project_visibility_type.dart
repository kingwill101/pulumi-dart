import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ProjectVisibilityType implements pulumi.PulumiEnum<String> {
  pRIVATE("PRIVATE"),
  pUBLICREAD("PUBLIC_READ");

  const ProjectVisibilityType(this.wireValue);
  @override
  final String wireValue;

  static ProjectVisibilityType fromValue(String value) {
    for (final item in ProjectVisibilityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectVisibilityType value: $value');
  }
}
