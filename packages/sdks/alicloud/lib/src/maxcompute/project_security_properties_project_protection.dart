// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSecurityPropertiesProjectProtection {
  /// Set [Exceptions or Trusted Items](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/project-data-protection)
  final pulumi.Input<String>? exceptionPolicy;

  /// Whether enabled, value:(true/false)
  final pulumi.Input<bool>? protected;

  /// Creates a new [ProjectSecurityPropertiesProjectProtection].
  /// [exceptionPolicy] Set [Exceptions or Trusted Items](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/project-data-protection)
  /// [protected] Whether enabled, value:(true/false)
  ProjectSecurityPropertiesProjectProtection({
    this.exceptionPolicy,
    this.protected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionPolicy': ?exceptionPolicy,
      'protected': ?protected,
    };
  }

  factory ProjectSecurityPropertiesProjectProtection.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectSecurityPropertiesProjectProtection(
      exceptionPolicy: (() {
        final guardedValue = map['exceptionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protected: (() {
        final guardedValue = map['protected'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
