import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'.
enum RequestSource implements pulumi.PulumiEnum<String> {
  rest("rest");

  const RequestSource(this.wireValue);
  @override
  final String wireValue;

  static RequestSource fromValue(String value) {
    for (final item in RequestSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestSource value: $value');
  }
}
