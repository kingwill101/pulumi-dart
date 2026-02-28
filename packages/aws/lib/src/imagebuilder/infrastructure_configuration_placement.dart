// ignore_for_file: unused_element, unnecessary_cast

class InfrastructureConfigurationPlacement {
  /// Availability Zone where your build and test instances will launch.
  final String? availabilityZone;

  /// ID of the Dedicated Host on which build and test instances run. Conflicts with `host_resource_group_arn`.
  final String? hostId;

  /// ARN of the host resource group in which to launch build and test instances. Conflicts with `host_id`.
  final String? hostResourceGroupArn;

  /// Placement tenancy of the instance. Valid values: `default`, `dedicated` and `host`.
  final String? tenancy;

  /// Creates a new [InfrastructureConfigurationPlacement].
  /// [availabilityZone] Availability Zone where your build and test instances will launch.
  /// [hostId] ID of the Dedicated Host on which build and test instances run. Conflicts with `host_resource_group_arn`.
  /// [hostResourceGroupArn] ARN of the host resource group in which to launch build and test instances. Conflicts with `host_id`.
  /// [tenancy] Placement tenancy of the instance. Valid values: `default`, `dedicated` and `host`.
  InfrastructureConfigurationPlacement({
    this.availabilityZone,
    this.hostId,
    this.hostResourceGroupArn,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final hostIdValue = hostId;
    if (hostIdValue != null) {
      map['hostId'] = hostIdValue;
    }
    final hostResourceGroupArnValue = hostResourceGroupArn;
    if (hostResourceGroupArnValue != null) {
      map['hostResourceGroupArn'] = hostResourceGroupArnValue;
    }
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    return map;
  }

  factory InfrastructureConfigurationPlacement.fromMap(
      Map<String, dynamic> map) {
    return InfrastructureConfigurationPlacement(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] == null
          ? null
          : map['hostResourceGroupArn'] as String,
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
    );
  }
}
