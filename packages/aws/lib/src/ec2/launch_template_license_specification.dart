// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateLicenseSpecification {
  /// ARN of the license configuration.
  final String licenseConfigurationArn;

  /// Creates a new [LaunchTemplateLicenseSpecification].
  /// [licenseConfigurationArn] ARN of the license configuration.
  LaunchTemplateLicenseSpecification({
    required this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['licenseConfigurationArn'] = licenseConfigurationArn;
    return map;
  }

  factory LaunchTemplateLicenseSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateLicenseSpecification(
      licenseConfigurationArn: map['licenseConfigurationArn'] as String,
    );
  }
}
