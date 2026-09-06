import 'package:pulumi/pulumi.dart' as pulumi;

/// Zone redundancy state for resources
enum RedundancyState implements pulumi.PulumiEnum<String> {
  zonal("Zonal"),
  none("None");

  const RedundancyState(this.wireValue);
  @override
  final String wireValue;

  static RedundancyState fromValue(String value) {
    for (final item in RedundancyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedundancyState value: $value');
  }
}
