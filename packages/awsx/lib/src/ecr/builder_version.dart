/// The version of the Docker builder
enum BuilderVersion {
  valueBuilderV1("BuilderV1"),
  valueBuilderBuildKit("BuilderBuildKit");

  const BuilderVersion(this.value);
  final String value;

  static BuilderVersion fromValue(String value) {
    for (final item in BuilderVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuilderVersion value: $value');
  }
}
