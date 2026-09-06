// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_lifecycle_config_response.dart';

/// Definition of ApplicationResourceLifecycleConfig
class ApplicationResourceLifecycleConfigResponse {
  /// The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  final pulumi.Input<String?>? serviceRole;
  /// Defines lifecycle settings for application versions.
  final pulumi.Input<ApplicationVersionLifecycleConfigResponse?>? versionLifecycleConfig;

  /// Creates a new [ApplicationResourceLifecycleConfigResponse].
  /// [serviceRole] The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  /// [versionLifecycleConfig] Defines lifecycle settings for application versions.
  const ApplicationResourceLifecycleConfigResponse({
    this.serviceRole,
    this.versionLifecycleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceRole': ?serviceRole,
      'versionLifecycleConfig': ?pulumi.Input.mapOptionalInputValue<ApplicationVersionLifecycleConfigResponse, Map<String, dynamic>>(versionLifecycleConfig, (value) => value.toMap()),
    };
  }

  factory ApplicationResourceLifecycleConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationResourceLifecycleConfigResponse(
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionLifecycleConfig: (() { final guardedValue = map['versionLifecycleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationVersionLifecycleConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
