// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField {
  /// Field name.
  final String? field;

  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField({
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

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField(
      field: map['field'] == null ? null : map['field'] as String,
    );
  }
}
