// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InfrastructureConfigurationPlacement {
  /// Availability Zone where your build and test instances will launch.
  final pulumi.Input<String>? availabilityZone;
  /// ID of the Dedicated Host on which build and test instances run. Conflicts with `hostResourceGroupArn`.
  final pulumi.Input<String>? hostId;
  /// ARN of the host resource group in which to launch build and test instances. Conflicts with `hostId`.
  final pulumi.Input<String>? hostResourceGroupArn;
  /// Placement tenancy of the instance. Valid values: `default`, `dedicated` and `host`.
  final pulumi.Input<String>? tenancy;

  /// Creates a new [InfrastructureConfigurationPlacement].
  /// [availabilityZone] Availability Zone where your build and test instances will launch.
  /// [hostId] ID of the Dedicated Host on which build and test instances run. Conflicts with `hostResourceGroupArn`.
  /// [hostResourceGroupArn] ARN of the host resource group in which to launch build and test instances. Conflicts with `hostId`.
  /// [tenancy] Placement tenancy of the instance. Valid values: `default`, `dedicated` and `host`.
  const InfrastructureConfigurationPlacement({
    this.availabilityZone,
    this.hostId,
    this.hostResourceGroupArn,
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'tenancy': ?tenancy,
    };
  }

  factory InfrastructureConfigurationPlacement.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationPlacement(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostResourceGroupArn: (() { final guardedValue = map['hostResourceGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
