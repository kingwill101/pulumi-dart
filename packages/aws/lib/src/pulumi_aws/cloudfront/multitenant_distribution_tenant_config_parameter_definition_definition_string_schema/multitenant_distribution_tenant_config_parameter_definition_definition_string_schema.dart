// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema {
  /// Comment describing the parameter.
  final String? comment;

  /// Default value for the parameter.
  final String? defaultValue;

  /// Whether the parameter is required.
  final bool required;

  MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema({
    this.comment,
    this.defaultValue,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    map['required'] = required;
    return map;
  }

  factory MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema(
      comment: map['comment'] == null ? null : map['comment'] as String,
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      required: map['required'] as bool,
    );
  }
}
