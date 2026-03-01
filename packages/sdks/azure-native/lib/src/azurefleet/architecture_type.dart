/// Architecture types supported by Azure VMs.
enum ArchitectureType {
  aRM64("ARM64"),
  x64("X64");

  const ArchitectureType(this.value);
  final String value;

  static ArchitectureType fromValue(String value) {
    for (final item in ArchitectureType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArchitectureType value: $value');
  }
}

