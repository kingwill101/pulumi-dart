// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema {
  /// Comment describing the parameter.
  final String? comment;

  /// Default value for the parameter.
  final String? defaultValue;

  /// Whether the parameter is required.
  final bool required;

  /// Creates a new [MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema].
  /// [comment] Comment describing the parameter.
  /// [defaultValue] Default value for the parameter.
  /// [required] Whether the parameter is required.
  MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema({
    this.comment,
    this.defaultValue,
    required this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'defaultValue': ?defaultValue,
      'required': required,
    };
  }

  factory MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema(
      comment: map['comment'] == null ? null : map['comment'] as String,
      defaultValue: map['defaultValue'] == null
          ? null
          : map['defaultValue'] as String,
      required: map['required'] as bool,
    );
  }
}
