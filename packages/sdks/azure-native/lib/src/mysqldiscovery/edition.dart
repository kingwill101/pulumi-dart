import 'package:pulumi/pulumi.dart' as pulumi;

/// mysql server edition.
enum Edition implements pulumi.PulumiEnum<String> {
  valueCommunity("Community"),
  valueEnterprise("Enterprise");

  const Edition(this.wireValue);
  @override
  final String wireValue;

  static Edition fromValue(String value) {
    for (final item in Edition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Edition value: $value');
  }
}
