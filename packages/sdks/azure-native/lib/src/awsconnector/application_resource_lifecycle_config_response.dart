// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_version_lifecycle_config_response.dart';

/// Definition of ApplicationResourceLifecycleConfig
class ApplicationResourceLifecycleConfigResponse {
  /// The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  final pulumi.Input<String>? serviceRole;
  /// Defines lifecycle settings for application versions.
  final pulumi.Input<ApplicationVersionLifecycleConfigResponse>? versionLifecycleConfig;

  /// Creates a new [ApplicationResourceLifecycleConfigResponse].
  /// [serviceRole] The ARN of an IAM service role that Elastic Beanstalk has permission to assume. The ServiceRole property is required the first time that you provide a ResourceLifecycleConfig for the application. After you provide it once, Elastic Beanstalk persists the Service Role with the application, and you don't need to specify it again. You can, however, specify it in subsequent updates to change the Service Role to another value.
  /// [versionLifecycleConfig] Defines lifecycle settings for application versions.
  ApplicationResourceLifecycleConfigResponse({
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
      serviceRole: map['serviceRole'] == null ? null : (map['serviceRole']! as String).input(),
      versionLifecycleConfig: map['versionLifecycleConfig'] == null ? null : (ApplicationVersionLifecycleConfigResponse.fromMap((map['versionLifecycleConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

