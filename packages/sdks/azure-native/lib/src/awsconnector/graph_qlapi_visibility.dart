import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum GraphQLApiVisibility implements pulumi.PulumiEnum<String> {
  gLOBAL("GLOBAL"),
  pRIVATE("PRIVATE");

  const GraphQLApiVisibility(this.wireValue);
  @override
  final String wireValue;

  static GraphQLApiVisibility fromValue(String value) {
    for (final item in GraphQLApiVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiVisibility value: $value');
  }
}
