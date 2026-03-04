/// A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
enum ContainerWorkingDirectory {
  taskWorkingDirectory("TaskWorkingDirectory"),
  containerImageDefault("ContainerImageDefault");

  const ContainerWorkingDirectory(this.wireValue);
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
