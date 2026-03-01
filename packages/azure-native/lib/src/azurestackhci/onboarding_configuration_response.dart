// ignore_for_file: unused_element, unnecessary_cast


/// Onboarding configuration.
class OnboardingConfigurationResponse {
  /// Azure Arc virtual machine ID.
  final String? arcVirtualMachineId;
  /// Location of the resource.
  final String? location;
  /// Resource ID.
  final String? resourceId;
  /// Tenant ID of the resource.
  final String? tenantId;
  /// Type of the onboarding resource to support polymorphic resource.
  final String? type;

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
      arcVirtualMachineId: map['arcVirtualMachineId'] == null ? null : map['arcVirtualMachineId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

