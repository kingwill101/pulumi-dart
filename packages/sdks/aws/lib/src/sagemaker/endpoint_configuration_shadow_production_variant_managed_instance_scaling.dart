// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationShadowProductionVariantManagedInstanceScaling {
  /// Maximum number of instances that the endpoint can provision when it scales up to accommodate an increase in traffic.
  final pulumi.Input<int>? maxInstanceCount;
  /// Minimum number of instances that the endpoint must retain when it scales down to accommodate a decrease in traffic.
  final pulumi.Input<int>? minInstanceCount;
  /// Whether managed instance scaling is enabled. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [EndpointConfigurationShadowProductionVariantManagedInstanceScaling].
  /// [maxInstanceCount] Maximum number of instances that the endpoint can provision when it scales up to accommodate an increase in traffic.
  /// [minInstanceCount] Minimum number of instances that the endpoint must retain when it scales down to accommodate a decrease in traffic.
  /// [status] Whether managed instance scaling is enabled. Valid values are `ENABLED` and `DISABLED`.
  EndpointConfigurationShadowProductionVariantManagedInstanceScaling({
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

  factory EndpointConfigurationShadowProductionVariantManagedInstanceScaling.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationShadowProductionVariantManagedInstanceScaling(
      maxInstanceCount: map['maxInstanceCount'] == null ? null : ((map['maxInstanceCount'] as int).input()).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : ((map['minInstanceCount'] as int).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

