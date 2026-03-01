/// Gets or sets the target projection type.
enum TargetStorageProjectionType {
  valueContainerFileSystem("ContainerFileSystem"),
  valuePersistentVolume("PersistentVolume");

  const TargetStorageProjectionType(this.value);
  final String value;

  static TargetStorageProjectionType fromValue(String value) {
    for (final item in TargetStorageProjectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetStorageProjectionType value: $value');
  }
}

