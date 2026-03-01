/// Type of the .NET Component.
enum DotNetComponentType {
  valueAspireDashboard("AspireDashboard");

  const DotNetComponentType(this.value);
  final String value;

  static DotNetComponentType fromValue(String value) {
    for (final item in DotNetComponentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DotNetComponentType value: $value');
  }
}

