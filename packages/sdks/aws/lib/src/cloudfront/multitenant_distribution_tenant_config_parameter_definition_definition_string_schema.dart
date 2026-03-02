// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema {
  /// Comment describing the parameter.
  final pulumi.Input<String>? comment;
  /// Default value for the parameter.
  final pulumi.Input<String>? defaultValue;
  /// Whether the parameter is required.
  final pulumi.Input<bool> required;

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

  factory MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchema(
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      defaultValue: map['defaultValue'] == null ? null : ((map['defaultValue'] as String).input()).input(),
      required: (map['required'] as bool).input(),
    );
  }
}

