// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineConditionTargetsTypeCondition {
  /// Human readable error message.
  final String? errorDetails;

  /// True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  final bool? status;

  DeliveryPipelineConditionTargetsTypeCondition({
    this.errorDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorDetailsValue = errorDetails;
    if (errorDetailsValue != null) {
      map['errorDetails'] = errorDetailsValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DeliveryPipelineConditionTargetsTypeCondition.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineConditionTargetsTypeCondition(
      errorDetails:
          map['errorDetails'] == null ? null : map['errorDetails'] as String,
      status: map['status'] == null ? null : map['status'] as bool,
    );
  }
}
