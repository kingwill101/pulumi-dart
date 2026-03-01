/// Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
enum RecordPropertyAndItemRemovals {
  valueTrue("true"),
  valueFalse("false");

  const RecordPropertyAndItemRemovals(this.value);
  final String value;

  static RecordPropertyAndItemRemovals fromValue(String value) {
    for (final item in RecordPropertyAndItemRemovals.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordPropertyAndItemRemovals value: $value');
  }
}

