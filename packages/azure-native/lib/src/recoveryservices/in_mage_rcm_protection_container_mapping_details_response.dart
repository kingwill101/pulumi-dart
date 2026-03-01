// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm provider specific container mapping details.
class InMageRcmProtectionContainerMappingDetailsResponse {
  /// A value indicating whether the flag for enable agent auto upgrade.
  final String enableAgentAutoUpgrade;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'InMageRcm'.
  final String instanceType;

  /// Creates a new [InMageRcmProtectionContainerMappingDetailsResponse].
  /// [enableAgentAutoUpgrade] A value indicating whether the flag for enable agent auto upgrade.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  InMageRcmProtectionContainerMappingDetailsResponse({
    required this.enableAgentAutoUpgrade,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAgentAutoUpgrade': enableAgentAutoUpgrade,
      'instanceType': instanceType,
    };
  }

  factory InMageRcmProtectionContainerMappingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmProtectionContainerMappingDetailsResponse(
      enableAgentAutoUpgrade: map['enableAgentAutoUpgrade'] as String,
      instanceType: map['instanceType'] as String,
    );
  }
}

