// ignore_for_file: unused_element, unnecessary_cast


/// Nested provisioning support.
class ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport {
  /// Minimum API version.
  final String? minimumApiVersion;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport].
  /// [minimumApiVersion] Minimum API version.
  ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport({
    this.minimumApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumApiVersion': ?minimumApiVersion,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceManagementOptionsNestedProvisioningSupport(
      minimumApiVersion: map['minimumApiVersion'] == null ? null : map['minimumApiVersion'] as String,
    );
  }
}

