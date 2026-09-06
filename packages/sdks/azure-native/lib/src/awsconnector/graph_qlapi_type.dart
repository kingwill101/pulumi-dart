import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum GraphQLApiType implements pulumi.PulumiEnum<String> {
  gRAPHQL("GRAPHQL"),
  mERGED("MERGED");

  const GraphQLApiType(this.wireValue);
  @override
  final String wireValue;

  static GraphQLApiType fromValue(String value) {
    for (final item in GraphQLApiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GraphQLApiType value: $value');
  }
}
