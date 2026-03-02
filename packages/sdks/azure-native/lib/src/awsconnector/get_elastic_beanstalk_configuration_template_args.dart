// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_elastic_beanstalk_configuration_template_args_doc}
/// Arguments for getElasticBeanstalkConfigurationTemplate.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_elastic_beanstalk_configuration_template_args_doc}
class GetElasticBeanstalkConfigurationTemplateArgs {
  /// Name of ElasticBeanstalkConfigurationTemplate
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticBeanstalkConfigurationTemplateArgs].
  /// [name] Name of ElasticBeanstalkConfigurationTemplate
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticBeanstalkConfigurationTemplateArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticBeanstalkConfigurationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticBeanstalkConfigurationTemplateArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

