import 'package:pulumi/pulumi.dart' as pulumi;

enum ContainerDependencyCondition implements pulumi.PulumiEnum<String> {
  sTART("START"),
  cOMPLETE("COMPLETE"),
  sUCCESS("SUCCESS"),
  hEALTHY("HEALTHY");

  const ContainerDependencyCondition(this.wireValue);
  @override
  final String wireValue;

  static ContainerDependencyCondition fromValue(String value) {
    for (final item in ContainerDependencyCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerDependencyCondition value: $value');
  }
}
