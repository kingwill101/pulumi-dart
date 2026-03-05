// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onboarding configuration.
class OnboardingConfigurationResponse {
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

  /// Creates a new [OnboardingConfigurationResponse].
  /// [arcVirtualMachineId] Azure Arc virtual machine ID.
  /// [location] Location of the resource.
  /// [resourceId] Resource ID.
  /// [tenantId] Tenant ID of the resource.
  /// [type] Type of the onboarding resource to support polymorphic resource.
  OnboardingConfigurationResponse({
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

  factory OnboardingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OnboardingConfigurationResponse(
      arcVirtualMachineId: (() { final guardedValue = map['arcVirtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

