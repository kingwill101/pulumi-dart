// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_lifecycle_config.dart';

/// Definition of ApplicationResourceLifecycleConfig
class ApplicationResourceLifecycleConfig {
  /// The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  final pulumi.Input<String>? serviceRole;
  /// Defines lifecycle settings for application versions.
  final pulumi.Input<ApplicationVersionLifecycleConfig>? versionLifecycleConfig;

  /// Creates a new [ApplicationResourceLifecycleConfig].
  /// [serviceRole] The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  /// [versionLifecycleConfig] Defines lifecycle settings for application versions.
  ApplicationResourceLifecycleConfig({
    this.serviceRole,
    this.versionLifecycleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceRole': ?serviceRole,
      'versionLifecycleConfig': ?pulumi.Input.mapOptionalInputValue<ApplicationVersionLifecycleConfig, Map<String, dynamic>>(versionLifecycleConfig, (value) => value.toMap()),
    };
  }

  factory ApplicationResourceLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationResourceLifecycleConfig(
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionLifecycleConfig: (() { final guardedValue = map['versionLifecycleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationVersionLifecycleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

