import 'package:pulumi/pulumi.dart' as pulumi;

/// Server version.
enum SingleServerVersion implements pulumi.PulumiEnum<String> {
  value95("9.5"),
  value96("9.6"),
  value10("10"),
  value100("10.0"),
  value102("10.2"),
  value11("11");

  const SingleServerVersion(this.wireValue);
  @override
  final String wireValue;

  static SingleServerVersion fromValue(String value) {
    for (final item in SingleServerVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleServerVersion value: $value');
  }
}
