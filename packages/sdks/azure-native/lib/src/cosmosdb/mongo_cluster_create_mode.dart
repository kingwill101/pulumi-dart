/// The mode to create a mongo cluster.
enum MongoClusterCreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const MongoClusterCreateMode(this.value);
  final String value;

  static MongoClusterCreateMode fromValue(String value) {
    for (final item in MongoClusterCreateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoClusterCreateMode value: $value');
  }
}

