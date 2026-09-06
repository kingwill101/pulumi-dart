import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to indicate type of Continuous backup mode
enum ContinuousTier implements pulumi.PulumiEnum<String> {
  valueContinuous7Days("Continuous7Days"),
  valueContinuous30Days("Continuous30Days");

  const ContinuousTier(this.wireValue);
  @override
  final String wireValue;

  static ContinuousTier fromValue(String value) {
    for (final item in ContinuousTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContinuousTier value: $value');
  }
}
