import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure STL Decomposition of the time-series target column.
enum UseStl implements pulumi.PulumiEnum<String> {
  none("None"),
  season("Season"),
  seasonTrend("SeasonTrend");

  const UseStl(this.wireValue);
  @override
  final String wireValue;

  static UseStl fromValue(String value) {
    for (final item in UseStl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UseStl value: $value');
  }
}
