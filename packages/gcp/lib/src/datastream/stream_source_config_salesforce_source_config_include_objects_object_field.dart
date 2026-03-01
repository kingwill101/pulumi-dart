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
    return <String, dynamic>{'name': ?name};
  }

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
