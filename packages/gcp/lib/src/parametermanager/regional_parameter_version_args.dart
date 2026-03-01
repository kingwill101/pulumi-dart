// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
/// The set of arguments for RegionalParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
class RegionalParameterVersionArgs {
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  final pulumi.Input<bool>? disabled;
  /// Parameter Manager Regional Parameter resource.
  final pulumi.Input<String> parameter;
  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> parameterData;
  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  final pulumi.Input<String> parameterVersionId;

  /// Creates a new [RegionalParameterVersionArgs].
  /// [disabled] The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  /// [parameter] Parameter Manager Regional Parameter resource.
  /// [parameterData] The Regional Parameter data.
  /// [parameterVersionId] Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  RegionalParameterVersionArgs({
    bool? disabled,
    required String parameter,
    required String parameterData,
    required String parameterVersionId,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      parameter = pulumi.Input.asInput<String>(parameter),
      parameterData = pulumi.Input.asInput<String>(parameterData),
      parameterVersionId = pulumi.Input.asInput<String>(parameterVersionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
    };
  }

  factory RegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalParameterVersionArgs(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      parameter: map['parameter'] as String,
      parameterData: map['parameterData'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
    );
  }
}

