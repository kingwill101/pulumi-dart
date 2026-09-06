import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
enum RecordPropertyAndItemRemovals implements pulumi.PulumiEnum<String> {
  valueTrue("true"),
  valueFalse("false");

  const RecordPropertyAndItemRemovals(this.wireValue);
  @override
  final String wireValue;

  static RecordPropertyAndItemRemovals fromValue(String value) {
    for (final item in RecordPropertyAndItemRemovals.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordPropertyAndItemRemovals value: $value');
  }
}
