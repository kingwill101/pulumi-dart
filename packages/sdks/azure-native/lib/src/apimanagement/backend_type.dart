import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the backend. A backend can be either Single or Pool.
enum BackendType implements pulumi.PulumiEnum<String> {
  valueSingle("Single"),
  valuePool("Pool");

  const BackendType(this.wireValue);
  @override
  final String wireValue;

  static BackendType fromValue(String value) {
    for (final item in BackendType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendType value: $value');
  }
}
