import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the target projection type.
enum TargetStorageProjectionType implements pulumi.PulumiEnum<String> {
  valueContainerFileSystem("ContainerFileSystem"),
  valuePersistentVolume("PersistentVolume");

  const TargetStorageProjectionType(this.wireValue);
  @override
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
