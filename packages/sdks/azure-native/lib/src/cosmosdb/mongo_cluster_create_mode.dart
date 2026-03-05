/// The mode to create a mongo cluster.
enum MongoClusterCreateMode {
  valueDefault("Default"),
  valuePointInTimeRestore("PointInTimeRestore");

  const MongoClusterCreateMode(this.wireValue);
  final String wireValue;

  static MongoClusterCreateMode fromValue(String value) {
    for (final item in MongoClusterCreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MongoClusterCreateMode value: $value');
  }
}

