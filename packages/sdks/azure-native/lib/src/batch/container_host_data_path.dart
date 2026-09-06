import 'package:pulumi/pulumi.dart' as pulumi;

/// The paths which will be mounted to container task's container.
enum ContainerHostDataPath implements pulumi.PulumiEnum<String> {
  shared("Shared"),
  startup("Startup"),
  vfsMounts("VfsMounts"),
  task("Task"),
  jobPrep("JobPrep"),
  applications("Applications");

  const ContainerHostDataPath(this.wireValue);
  @override
  final String wireValue;

  static ContainerHostDataPath fromValue(String value) {
    for (final item in ContainerHostDataPath.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerHostDataPath value: $value');
  }
}
