// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProjectSecurityPropertiesProjectProtection {
  /// Set [Exceptions or Trusted Items](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/project-data-protection).
  final pulumi.Input<String> exceptionPolicy;
  /// Whether enabled, value:(true/false).
  final pulumi.Input<bool> protected;

  /// Creates a new [GetProjectsProjectSecurityPropertiesProjectProtection].
  /// [exceptionPolicy] Set [Exceptions or Trusted Items](https://www.alibabacloud.com/help/en/maxcompute/security-and-compliance/project-data-protection).
  /// [protected] Whether enabled, value:(true/false).
  GetProjectsProjectSecurityPropertiesProjectProtection({
    required this.exceptionPolicy,
    required this.protected,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionPolicy': exceptionPolicy,
      'protected': protected,
    };
  }

  factory GetProjectsProjectSecurityPropertiesProjectProtection.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectSecurityPropertiesProjectProtection(
      exceptionPolicy: pulumi.Input.fromValue(map['exceptionPolicy'] as String),
      protected: pulumi.Input.fromValue(map['protected'] as bool),
    );
  }
}

