// ignore_for_file: unused_element, unnecessary_cast

class InfrastructureConfigurationPlacement {
  /// Availability Zone where your build and test instances will launch.
  final String? availabilityZone;

  /// ID of the Dedicated Host on which build and test instances run. Conflicts with <span pulumi-lang-nodejs="`hostResourceGroupArn`" pulumi-lang-dotnet="`HostResourceGroupArn`" pulumi-lang-go="`hostResourceGroupArn`" pulumi-lang-python="`host_resource_group_arn`" pulumi-lang-yaml="`hostResourceGroupArn`" pulumi-lang-java="`hostResourceGroupArn`">`host_resource_group_arn`</span>.
  final String? hostId;

  /// ARN of the host resource group in which to launch build and test instances. Conflicts with <span pulumi-lang-nodejs="`hostId`" pulumi-lang-dotnet="`HostId`" pulumi-lang-go="`hostId`" pulumi-lang-python="`host_id`" pulumi-lang-yaml="`hostId`" pulumi-lang-java="`hostId`">`host_id`</span>.
  final String? hostResourceGroupArn;

  /// Placement tenancy of the instance. Valid values: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span> and <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  final String? tenancy;

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
