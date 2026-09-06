import 'package:pulumi/pulumi.dart' as pulumi;

/// Architecture types supported by Azure VMs.
enum ArchitectureType implements pulumi.PulumiEnum<String> {
  aRM64("ARM64"),
  x64("X64");

  const ArchitectureType(this.wireValue);
  @override
  final String wireValue;

  static ArchitectureType fromValue(String value) {
    for (final item in ArchitectureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArchitectureType value: $value');
  }
}
