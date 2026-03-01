/// Caching behavior for the requests
enum QueryStringBehavior {
  include("Include"),
  includeAll("IncludeAll"),
  exclude("Exclude"),
  excludeAll("ExcludeAll");

  const QueryStringBehavior(this.value);
  final String value;

  static QueryStringBehavior fromValue(String value) {
    for (final item in QueryStringBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryStringBehavior value: $value');
  }
}

