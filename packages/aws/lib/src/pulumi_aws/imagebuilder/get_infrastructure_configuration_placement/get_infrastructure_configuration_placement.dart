// ignore_for_file: unused_element, unnecessary_cast

class GetInfrastructureConfigurationPlacement {
  /// Availability Zone where your build and test instances will launch.
  final String availabilityZone;

  /// ID of the Dedicated Host on which build and test instances run.
  final String hostId;

  /// ARN of the host resource group in which to launch build and test instances.
  final String hostResourceGroupArn;

  /// Placement tenancy of the instance.
  final String tenancy;

  GetInfrastructureConfigurationPlacement({
    required this.availabilityZone,
    required this.hostId,
    required this.hostResourceGroupArn,
    required this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    map['hostId'] = hostId;
    map['hostResourceGroupArn'] = hostResourceGroupArn;
    map['tenancy'] = tenancy;
    return map;
  }

  factory GetInfrastructureConfigurationPlacement.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationPlacement(
      availabilityZone: map['availabilityZone'] as String,
      hostId: map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] as String,
      tenancy: map['tenancy'] as String,
    );
  }
}
