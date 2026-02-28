// ignore_for_file: unused_element, unnecessary_cast

class StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField {
  /// Field name.
  final String? name;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField].
  /// [name] Field name.
  StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField({
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

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
