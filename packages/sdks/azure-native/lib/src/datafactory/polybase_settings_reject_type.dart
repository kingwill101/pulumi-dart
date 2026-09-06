import 'package:pulumi/pulumi.dart' as pulumi;

/// Reject type.
enum PolybaseSettingsRejectType implements pulumi.PulumiEnum<String> {
  value("value"),
  percentage("percentage");

  const PolybaseSettingsRejectType(this.wireValue);
  @override
  final String wireValue;

  static PolybaseSettingsRejectType fromValue(String value) {
    for (final item in PolybaseSettingsRejectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolybaseSettingsRejectType value: $value');
  }
}
