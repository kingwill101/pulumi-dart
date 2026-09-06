import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ImdsSupportValues implements pulumi.PulumiEnum<String> {
  v20("v2.0");

  const ImdsSupportValues(this.wireValue);
  @override
  final String wireValue;

  static ImdsSupportValues fromValue(String value) {
    for (final item in ImdsSupportValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImdsSupportValues value: $value');
  }
}
