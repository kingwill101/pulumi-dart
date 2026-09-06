import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the .NET Component.
enum DotNetComponentType implements pulumi.PulumiEnum<String> {
  valueAspireDashboard("AspireDashboard");

  const DotNetComponentType(this.wireValue);
  @override
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
