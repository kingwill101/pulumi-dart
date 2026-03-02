// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInfrastructureConfigurationPlacement {
  /// Availability Zone where your build and test instances will launch.
  final pulumi.Input<String> availabilityZone;
  /// ID of the Dedicated Host on which build and test instances run.
  final pulumi.Input<String> hostId;
  /// ARN of the host resource group in which to launch build and test instances.
  final pulumi.Input<String> hostResourceGroupArn;
  /// Placement tenancy of the instance.
  final pulumi.Input<String> tenancy;

  /// Creates a new [GetInfrastructureConfigurationPlacement].
  /// [availabilityZone] Availability Zone where your build and test instances will launch.
  /// [hostId] ID of the Dedicated Host on which build and test instances run.
  /// [hostResourceGroupArn] ARN of the host resource group in which to launch build and test instances.
  /// [tenancy] Placement tenancy of the instance.
  GetInfrastructureConfigurationPlacement({
    required this.availabilityZone,
    required this.hostId,
    required this.hostResourceGroupArn,
    required this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'hostId': hostId,
      'hostResourceGroupArn': hostResourceGroupArn,
      'tenancy': tenancy,
    };
  }

  factory GetInfrastructureConfigurationPlacement.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationPlacement(
      availabilityZone: (map['availabilityZone'] as String).input(),
      hostId: (map['hostId'] as String).input(),
      hostResourceGroupArn: (map['hostResourceGroupArn'] as String).input(),
      tenancy: (map['tenancy'] as String).input(),
    );
  }
}

