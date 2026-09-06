import 'package:pulumi/pulumi.dart' as pulumi;

/// placement policy affinity type
enum AffinityType implements pulumi.PulumiEnum<String> {
  affinity("Affinity"),
  antiAffinity("AntiAffinity");

  const AffinityType(this.wireValue);
  @override
  final String wireValue;

  static AffinityType fromValue(String value) {
    for (final item in AffinityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AffinityType value: $value');
  }
}
