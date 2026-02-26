// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField({
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

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}
