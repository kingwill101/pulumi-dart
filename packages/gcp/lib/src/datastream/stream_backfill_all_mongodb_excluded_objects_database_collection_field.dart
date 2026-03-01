// ignore_for_file: unused_element, unnecessary_cast

class StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  /// Creates a new [StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField].
  /// [field] Field name.
  StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField({this.field});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': ?field};
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}
