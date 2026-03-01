// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField].
  /// [field] Field name.
  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': ?field};
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}
