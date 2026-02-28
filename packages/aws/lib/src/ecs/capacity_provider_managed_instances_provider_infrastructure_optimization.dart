// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderManagedInstancesProviderInfrastructureOptimization {
  /// This parameter defines the number of seconds Amazon ECS Managed Instances waits before optimizing EC2 instances that have become idle or underutilized. A longer delay increases the likelihood of placing new tasks on idle instances, reducing startup time. A shorter delay helps reduce infrastructure costs by optimizing idle instances more quickly. Valid values are:
  /// * Not set (null) - Uses the default optimization behavior.
  /// * `-1` - Disables automatic infrastructure optimization.
  final int? scaleInAfter;

  /// Creates a new [CapacityProviderManagedInstancesProviderInfrastructureOptimization].
  /// [scaleInAfter] This parameter defines the number of seconds Amazon ECS Managed Instances waits before optimizing EC2 instances that have become idle or underutilized. A longer delay increases the likelihood of placing new tasks on idle instances, reducing startup time. A shorter delay helps reduce infrastructure costs by optimizing idle instances more quickly. Valid values are:
  CapacityProviderManagedInstancesProviderInfrastructureOptimization({
    this.scaleInAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scaleInAfterValue = scaleInAfter;
    if (scaleInAfterValue != null) {
      map['scaleInAfter'] = scaleInAfterValue;
    }
    return map;
  }

  factory CapacityProviderManagedInstancesProviderInfrastructureOptimization.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInfrastructureOptimization(
      scaleInAfter:
          map['scaleInAfter'] == null ? null : map['scaleInAfter'] as int,
    );
  }
}
