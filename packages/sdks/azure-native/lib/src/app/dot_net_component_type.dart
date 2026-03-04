/// Type of the .NET Component.
enum DotNetComponentType {
  valueAspireDashboard("AspireDashboard");

  const DotNetComponentType(this.wireValue);
  final String wireValue;

  static DotNetComponentType fromValue(String value) {
    for (final item in DotNetComponentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DotNetComponentType value: $value');
  }
}
