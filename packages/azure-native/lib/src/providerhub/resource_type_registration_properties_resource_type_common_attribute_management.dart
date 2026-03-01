// ignore_for_file: unused_element, unnecessary_cast


/// Resource type common attribute management.
class ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement {
  /// Common api versions merge mode.
  final String? commonApiVersionsMergeMode;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement].
  /// [commonApiVersionsMergeMode] Common api versions merge mode.
  ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement({
    this.commonApiVersionsMergeMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonApiVersionsMergeMode': ?commonApiVersionsMergeMode,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement(
      commonApiVersionsMergeMode: map['commonApiVersionsMergeMode'] == null ? null : map['commonApiVersionsMergeMode'] as String,
    );
  }
}

