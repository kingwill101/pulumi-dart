import 'package:pulumi/pulumi.dart' as pulumi;

enum TaskCompatibility implements pulumi.PulumiEnum<String> {
  fARGATE("FARGATE"),
  mANAGEDINSTANCES("MANAGED_INSTANCES"),
  eC2("EC2");

  const TaskCompatibility(this.wireValue);
  @override
  final String wireValue;

  static TaskCompatibility fromValue(String value) {
    for (final item in TaskCompatibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskCompatibility value: $value');
  }
}
