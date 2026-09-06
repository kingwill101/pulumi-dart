// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LicenseConfiguration
class LicenseConfiguration {
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the license configuration.&lt;/p&gt;
  final pulumi.Input<String?>? licenseConfigurationArn;

  /// Creates a new [LicenseConfiguration].
  /// [licenseConfigurationArn] &lt;p&gt;The Amazon Resource Name (ARN) of the license configuration.&lt;/p&gt;
  const LicenseConfiguration({
    this.licenseConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
    };
  }

  factory LicenseConfiguration.fromMap(Map<String, dynamic> map) {
    return LicenseConfiguration(
      licenseConfigurationArn: (() { final guardedValue = map['licenseConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
