import 'package:pulumi/pulumi.dart' as pulumi;

/// Data policy of the storage Account.
enum DataPolicy implements pulumi.PulumiEnum<String> {
  valueCloud("Cloud"),
  valueLocal("Local");

  const DataPolicy(this.wireValue);
  @override
  final String wireValue;

  static DataPolicy fromValue(String value) {
    for (final item in DataPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPolicy value: $value');
  }
}
