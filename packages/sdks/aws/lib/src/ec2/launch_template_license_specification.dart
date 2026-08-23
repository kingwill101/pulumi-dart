// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateLicenseSpecification {
  /// ARN of the license configuration.
  final pulumi.Input<String> licenseConfigurationArn;

  /// Creates a new [LaunchTemplateLicenseSpecification].
  /// [licenseConfigurationArn] ARN of the license configuration.
  const LaunchTemplateLicenseSpecification({
    required this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': licenseConfigurationArn,
    };
  }

  factory LaunchTemplateLicenseSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateLicenseSpecification(
      licenseConfigurationArn: pulumi.Input.fromValue(map['licenseConfigurationArn'] as String),
    );
  }
}
