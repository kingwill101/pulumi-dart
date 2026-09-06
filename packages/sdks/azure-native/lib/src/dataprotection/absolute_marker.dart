import 'package:pulumi/pulumi.dart' as pulumi;

enum AbsoluteMarker implements pulumi.PulumiEnum<String> {
  valueAllBackup("AllBackup"),
  valueFirstOfDay("FirstOfDay"),
  valueFirstOfMonth("FirstOfMonth"),
  valueFirstOfWeek("FirstOfWeek"),
  valueFirstOfYear("FirstOfYear");

  const AbsoluteMarker(this.wireValue);
  @override
  final String wireValue;

  static AbsoluteMarker fromValue(String value) {
    for (final item in AbsoluteMarker.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AbsoluteMarker value: $value');
  }
}
