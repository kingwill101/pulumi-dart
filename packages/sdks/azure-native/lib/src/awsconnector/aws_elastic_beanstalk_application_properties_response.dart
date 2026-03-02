// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_resource_lifecycle_config_response.dart';

/// Definition of awsElasticBeanstalkApplication
class AwsElasticBeanstalkApplicationPropertiesResponse {
  /// A name for the Elastic Beanstalk application. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the application name.
  final pulumi.Input<String>? applicationName;
  /// Your description of the application.
  final pulumi.Input<String>? description;
  /// Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
  final pulumi.Input<ApplicationResourceLifecycleConfigResponse>? resourceLifecycleConfig;

  /// Creates a new [AwsElasticBeanstalkApplicationPropertiesResponse].
  /// [applicationName] A name for the Elastic Beanstalk application. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the application name.
  /// [description] Your description of the application.
  /// [resourceLifecycleConfig] Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
  AwsElasticBeanstalkApplicationPropertiesResponse({
    this.applicationName,
    this.description,
    this.resourceLifecycleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'description': ?description,
      'resourceLifecycleConfig': ?pulumi.Input.mapOptionalInputValue<ApplicationResourceLifecycleConfigResponse, Map<String, dynamic>>(resourceLifecycleConfig, (value) => value.toMap()),
    };
  }

  factory AwsElasticBeanstalkApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticBeanstalkApplicationPropertiesResponse(
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      resourceLifecycleConfig: map['resourceLifecycleConfig'] == null ? null : (ApplicationResourceLifecycleConfigResponse.fromMap((map['resourceLifecycleConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

