// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_beanstalk_application_args_doc}
/// Arguments for getElasticBeanstalkApplication.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_beanstalk_application_args_doc}
class GetElasticBeanstalkApplicationArgs {
  /// Name of ElasticBeanstalkApplication
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticBeanstalkApplicationArgs].
  /// [name] Name of ElasticBeanstalkApplication
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetElasticBeanstalkApplicationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticBeanstalkApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticBeanstalkApplicationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

