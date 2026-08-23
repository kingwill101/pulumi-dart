/// The version of the Docker builder
enum BuilderVersion {
  valueBuilderV1("BuilderV1"),
  valueBuilderBuildKit("BuilderBuildKit");

  const BuilderVersion(this.wireValue);
  final String wireValue;

  static BuilderVersion fromValue(String value) {
    for (final item in BuilderVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuilderVersion value: $value');
  }
}
