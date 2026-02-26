// ignore_for_file: unused_element, unnecessary_cast

class StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    return map;
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}
