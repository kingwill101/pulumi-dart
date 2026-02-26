// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionalParameterVersion.
class RegionalParameterVersionArgs {
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  final Input<bool>? disabled;

  /// Parameter Manager Regional Parameter resource.
  final Input<String> parameter;

  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String> parameterData;

  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  final Input<String> parameterVersionId;

  RegionalParameterVersionArgs({
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

  factory RegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalParameterVersionArgs(
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      parameter: Input.asInput<String>(map['parameter']),
      parameterData: Input.asInput<String>(map['parameterData']),
      parameterVersionId: Input.asInput<String>(map['parameterVersionId']),
    );
  }
}
