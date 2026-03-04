// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateLicenseSpecification {
  final pulumi.Input<String> licenseConfigurationArn;

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
      licenseConfigurationArn: pulumi.Input.fromValue(
        map['licenseConfigurationArn'] as String,
      ),
    );
  }
}
