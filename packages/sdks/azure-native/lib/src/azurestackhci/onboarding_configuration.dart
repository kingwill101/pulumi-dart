// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onboarding configuration.
class OnboardingConfiguration {
  /// Azure Arc virtual machine ID.
  final pulumi.Input<String>? arcVirtualMachineId;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Resource ID.
  final pulumi.Input<String>? resourceId;
  /// Tenant ID of the resource.
  final pulumi.Input<String>? tenantId;
  /// Type of the onboarding resource to support polymorphic resource.
  final pulumi.Input<String>? type;

  /// Creates a new [OnboardingConfiguration].
  /// [arcVirtualMachineId] Azure Arc virtual machine ID.
  /// [location] Location of the resource.
  /// [resourceId] Resource ID.
  /// [tenantId] Tenant ID of the resource.
  /// [type] Type of the onboarding resource to support polymorphic resource.
  OnboardingConfiguration({
    this.arcVirtualMachineId,
    this.location,
    this.resourceId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcVirtualMachineId': ?arcVirtualMachineId,
      'location': ?location,
      'resourceId': ?resourceId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory OnboardingConfiguration.fromMap(Map<String, dynamic> map) {
    return OnboardingConfiguration(
      arcVirtualMachineId: map['arcVirtualMachineId'] == null ? null : (map['arcVirtualMachineId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

