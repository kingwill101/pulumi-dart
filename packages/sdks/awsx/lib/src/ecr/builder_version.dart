import 'package:pulumi/pulumi.dart' as pulumi;

/// The version of the Docker builder
enum BuilderVersion implements pulumi.PulumiEnum<String> {
  valueBuilderV1("BuilderV1"),
  valueBuilderBuildKit("BuilderBuildKit");

  const BuilderVersion(this.wireValue);
  @override
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
