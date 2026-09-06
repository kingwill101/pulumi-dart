import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
enum ContainerWorkingDirectory implements pulumi.PulumiEnum<String> {
  taskWorkingDirectory("TaskWorkingDirectory"),
  containerImageDefault("ContainerImageDefault");

  const ContainerWorkingDirectory(this.wireValue);
  @override
  final String wireValue;

  static ContainerWorkingDirectory fromValue(String value) {
    for (final item in ContainerWorkingDirectory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerWorkingDirectory value: $value');
  }
}
