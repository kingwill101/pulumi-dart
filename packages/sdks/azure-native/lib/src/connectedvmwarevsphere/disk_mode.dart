import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the disk mode.
enum DiskMode implements pulumi.PulumiEnum<String> {
  valuePersistent("persistent"),
  valueIndependentPersistent("independent_persistent"),
  valueIndependentNonpersistent("independent_nonpersistent");

  const DiskMode(this.wireValue);
  @override
  final String wireValue;

  static DiskMode fromValue(String value) {
    for (final item in DiskMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskMode value: $value');
  }
}
