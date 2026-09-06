import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the target storage access type.
enum TargetStorageAccessType implements pulumi.PulumiEnum<String> {
  valueShared("Shared"),
  valueExclusive("Exclusive");

  const TargetStorageAccessType(this.wireValue);
  @override
  final String wireValue;

  static TargetStorageAccessType fromValue(String value) {
    for (final item in TargetStorageAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetStorageAccessType value: $value');
  }
}
