// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField {
  /// Field name.
  final String? name;

  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField({
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

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
