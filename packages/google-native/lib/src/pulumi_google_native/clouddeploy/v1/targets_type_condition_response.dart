// ignore_for_file: unused_element, unnecessary_cast

/// TargetsTypeCondition contains information on whether the Targets defined in the Delivery Pipeline are of the same type.
class TargetsTypeConditionResponse {
  /// Human readable error message.
  final String errorDetails;

  /// True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  final bool status;

  TargetsTypeConditionResponse({
    required this.errorDetails,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorDetails'] = errorDetails;
    map['status'] = status;
    return map;
  }

  factory TargetsTypeConditionResponse.fromMap(Map<String, dynamic> map) {
    return TargetsTypeConditionResponse(
      errorDetails: map['errorDetails'] as String,
      status: map['status'] as bool,
    );
  }
}
