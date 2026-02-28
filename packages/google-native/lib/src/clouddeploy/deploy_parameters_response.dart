// ignore_for_file: unused_element, unnecessary_cast

/// DeployParameters contains deploy parameters information.
class DeployParametersResponse {
  /// Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  final Map<String, String> matchTargetLabels;

  /// Values are deploy parameters in key-value pairs.
  final Map<String, String> values;

  /// Creates a new [DeployParametersResponse].
  /// [matchTargetLabels] Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy parameters are applied to all targets (including child targets of a multi-target).
  /// [values] Values are deploy parameters in key-value pairs.
  DeployParametersResponse({
    required this.matchTargetLabels,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matchTargetLabels'] = matchTargetLabels;
    map['values'] = values;
    return map;
  }

  factory DeployParametersResponse.fromMap(Map<String, dynamic> map) {
    return DeployParametersResponse(
      matchTargetLabels:
          (map['matchTargetLabels'] as Map).cast<String, String>(),
      values: (map['values'] as Map).cast<String, String>(),
    );
  }
}
