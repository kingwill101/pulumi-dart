// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationProductionVariantManagedInstanceScaling {
  /// Maximum number of instances that the endpoint can provision when it scales up to accommodate an increase in traffic.
  final int? maxInstanceCount;

  /// Minimum number of instances that the endpoint must retain when it scales down to accommodate a decrease in traffic.
  final int? minInstanceCount;

  /// Whether managed instance scaling is enabled. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Creates a new [EndpointConfigurationProductionVariantManagedInstanceScaling].
  /// [maxInstanceCount] Maximum number of instances that the endpoint can provision when it scales up to accommodate an increase in traffic.
  /// [minInstanceCount] Minimum number of instances that the endpoint must retain when it scales down to accommodate a decrease in traffic.
  /// [status] Whether managed instance scaling is enabled. Valid values are `ENABLED` and `DISABLED`.
  EndpointConfigurationProductionVariantManagedInstanceScaling({
    this.maxInstanceCount,
    this.minInstanceCount,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
      'status': ?status,
    };
  }

  factory EndpointConfigurationProductionVariantManagedInstanceScaling.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigurationProductionVariantManagedInstanceScaling(
      maxInstanceCount: map['maxInstanceCount'] == null
          ? null
          : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
