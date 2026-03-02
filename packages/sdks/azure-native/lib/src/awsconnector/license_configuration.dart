// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LicenseConfiguration
class LicenseConfiguration {
  /// <p>The Amazon Resource Name (ARN) of the license configuration.</p>
  final pulumi.Input<String>? licenseConfigurationArn;

  /// Creates a new [LicenseConfiguration].
  /// [licenseConfigurationArn] <p>The Amazon Resource Name (ARN) of the license configuration.</p>
  LicenseConfiguration({
    this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
    };
  }

  factory LicenseConfiguration.fromMap(Map<String, dynamic> map) {
    return LicenseConfiguration(
      licenseConfigurationArn: map['licenseConfigurationArn'] == null ? null : (map['licenseConfigurationArn'] as String).input(),
    );
  }
}

