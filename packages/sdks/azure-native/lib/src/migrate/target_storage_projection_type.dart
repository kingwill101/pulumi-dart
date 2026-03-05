/// Gets or sets the target projection type.
enum TargetStorageProjectionType {
  valueContainerFileSystem("ContainerFileSystem"),
  valuePersistentVolume("PersistentVolume");

  const TargetStorageProjectionType(this.wireValue);
  final String wireValue;

  static TargetStorageProjectionType fromValue(String value) {
    for (final item in TargetStorageProjectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetStorageProjectionType value: $value');
  }
}

