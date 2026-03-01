// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateLicenseSpecification {
  final String licenseConfigurationArn;

  /// Creates a new [GetLaunchTemplateLicenseSpecification].
  /// [licenseConfigurationArn] Required.
  GetLaunchTemplateLicenseSpecification({
    required this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': licenseConfigurationArn,
    };
  }

  factory GetLaunchTemplateLicenseSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateLicenseSpecification(
      licenseConfigurationArn: map['licenseConfigurationArn'] as String,
    );
  }
}
