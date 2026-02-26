// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ParameterVersion.
class ParameterVersionArgs {
  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  final Input<bool>? disabled;

  /// Parameter Manager Parameter resource.
  final Input<String> parameter;

  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String> parameterData;

  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  final Input<String> parameterVersionId;

  ParameterVersionArgs({
    this.disabled,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['parameter'] = parameter;
    map['parameterData'] = parameterData;
    map['parameterVersionId'] = parameterVersionId;
    return map;
  }

  factory ParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return ParameterVersionArgs(
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      parameter: Input.asInput<String>(map['parameter']),
      parameterData: Input.asInput<String>(map['parameterData']),
      parameterVersionId: Input.asInput<String>(map['parameterVersionId']),
    );
  }
}
