// ignore_for_file: unused_element, unnecessary_cast

class StreamBackfillAllSalesforceExcludedObjectsObjectField {
  /// Field name.
  final String? name;

  /// Creates a new [StreamBackfillAllSalesforceExcludedObjectsObjectField].
  /// [name] Field name.
  StreamBackfillAllSalesforceExcludedObjectsObjectField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory StreamBackfillAllSalesforceExcludedObjectsObjectField.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSalesforceExcludedObjectsObjectField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
