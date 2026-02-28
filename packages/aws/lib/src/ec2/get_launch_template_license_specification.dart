// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateLicenseSpecification {
  final String licenseConfigurationArn;

  /// Creates a new [GetLaunchTemplateLicenseSpecification].
  /// [licenseConfigurationArn] Required.
  GetLaunchTemplateLicenseSpecification({
    required this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['licenseConfigurationArn'] = licenseConfigurationArn;
    return map;
  }

  factory GetLaunchTemplateLicenseSpecification.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateLicenseSpecification(
      licenseConfigurationArn: map['licenseConfigurationArn'] as String,
    );
  }
}
