import 'package:pulumi/pulumi.dart' as pulumi;

/// Caching behavior for the requests
enum QueryStringBehavior implements pulumi.PulumiEnum<String> {
  include("Include"),
  includeAll("IncludeAll"),
  exclude("Exclude"),
  excludeAll("ExcludeAll");

  const QueryStringBehavior(this.wireValue);
  @override
  final String wireValue;

  static QueryStringBehavior fromValue(String value) {
    for (final item in QueryStringBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryStringBehavior value: $value');
  }
}
