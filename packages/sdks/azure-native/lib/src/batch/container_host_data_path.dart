/// The paths which will be mounted to container task's container.
enum ContainerHostDataPath {
  shared("Shared"),
  startup("Startup"),
  vfsMounts("VfsMounts"),
  task("Task"),
  jobPrep("JobPrep"),
  applications("Applications");

  const ContainerHostDataPath(this.value);
  final String value;

  static ContainerHostDataPath fromValue(String value) {
    for (final item in ContainerHostDataPath.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerHostDataPath value: $value');
  }
}

