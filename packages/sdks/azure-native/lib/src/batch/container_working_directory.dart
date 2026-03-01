/// A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
enum ContainerWorkingDirectory {
  taskWorkingDirectory("TaskWorkingDirectory"),
  containerImageDefault("ContainerImageDefault");

  const ContainerWorkingDirectory(this.value);
  final String value;

  static ContainerWorkingDirectory fromValue(String value) {
    for (final item in ContainerWorkingDirectory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerWorkingDirectory value: $value');
  }
}

