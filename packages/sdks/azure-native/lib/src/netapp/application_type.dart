import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Type
enum ApplicationType implements pulumi.PulumiEnum<String> {
  valueSAPHANA("SAP-HANA"),
  valueORACLE("ORACLE");

  const ApplicationType(this.wireValue);
  @override
  final String wireValue;

  static ApplicationType fromValue(String value) {
    for (final item in ApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationType value: $value');
  }
}
