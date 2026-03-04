// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LicenseConfiguration
class LicenseConfigurationResponse {
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the license configuration.&lt;/p&gt;
  final pulumi.Input<String>? licenseConfigurationArn;

  /// Creates a new [LicenseConfigurationResponse].
  /// [licenseConfigurationArn] &lt;p&gt;The Amazon Resource Name (ARN) of the license configuration.&lt;/p&gt;
  LicenseConfigurationResponse({this.licenseConfigurationArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseConfigurationArn': ?licenseConfigurationArn,
    };
  }

  factory LicenseConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LicenseConfigurationResponse(
      licenseConfigurationArn: (() {
        final guardedValue = map['licenseConfigurationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
