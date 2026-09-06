import 'package:pulumi/pulumi.dart' as pulumi;

/// The pass name. Currently, the only allowable value is OobeSystem.
enum PassName implements pulumi.PulumiEnum<String> {
  valueOobeSystem("OobeSystem");

  const PassName(this.wireValue);
  @override
  final String wireValue;

  static PassName fromValue(String value) {
    for (final item in PassName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PassName value: $value');
  }
}
