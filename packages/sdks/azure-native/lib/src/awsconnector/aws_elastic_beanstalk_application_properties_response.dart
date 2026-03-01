// ignore_for_file: unused_element, unnecessary_cast

import 'application_resource_lifecycle_config_response.dart';

/// Definition of awsElasticBeanstalkApplication
class AwsElasticBeanstalkApplicationPropertiesResponse {
  /// A name for the Elastic Beanstalk application. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the application name.
  final String? applicationName;
  /// Your description of the application.
  final String? description;
  /// Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
  final ApplicationResourceLifecycleConfigResponse? resourceLifecycleConfig;

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
      'resourceLifecycleConfig': ?resourceLifecycleConfig == null ? null : resourceLifecycleConfig!.toMap(),
    };
  }

  factory AwsElasticBeanstalkApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticBeanstalkApplicationPropertiesResponse(
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      resourceLifecycleConfig: map['resourceLifecycleConfig'] == null ? null : ApplicationResourceLifecycleConfigResponse.fromMap((map['resourceLifecycleConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

