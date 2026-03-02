// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LicenseConfiguration
class LicenseConfigurationResponse {
  /// <p>The Amazon Resource Name (ARN) of the license configuration.</p>
  final pulumi.Input<String>? licenseConfigurationArn;

  /// Creates a new [LicenseConfigurationResponse].
  /// [licenseConfigurationArn] <p>The Amazon Resource Name (ARN) of the license configuration.</p>
  LicenseConfigurationResponse({
    this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
    };
  }

  factory LicenseConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LicenseConfigurationResponse(
      licenseConfigurationArn: map['licenseConfigurationArn'] == null ? null : (map['licenseConfigurationArn'] as String).input(),
    );
  }
}

