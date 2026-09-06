import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines how the stand-by scheme should be provided.
enum ResourcePredictionsProfileType implements pulumi.PulumiEnum<String> {
  manual("Manual"),
  automatic("Automatic");

  const ResourcePredictionsProfileType(this.wireValue);
  @override
  final String wireValue;

  static ResourcePredictionsProfileType fromValue(String value) {
    for (final item in ResourcePredictionsProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePredictionsProfileType value: $value');
  }
}
