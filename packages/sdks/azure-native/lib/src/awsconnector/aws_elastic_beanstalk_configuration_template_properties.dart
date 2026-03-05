// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_option_setting.dart';
import 'source_configuration.dart';

/// Definition of awsElasticBeanstalkConfigurationTemplate
class AwsElasticBeanstalkConfigurationTemplateProperties {
  /// The name of the Elastic Beanstalk application to associate with this configuration template.
  final pulumi.Input<String>? applicationName;
  /// An optional description for this configuration.
  final pulumi.Input<String>? description;
  /// The ID of an environment whose settings you want to use to create the configuration template. You must specify EnvironmentId if you don't specify PlatformArn, SolutionStackName, or SourceConfiguration.
  final pulumi.Input<String>? environmentId;
  /// Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these values override the values obtained from the solution stack or the source configuration template. For a complete list of Elastic Beanstalk configuration options, see [Option Values](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html) in the AWS Elastic Beanstalk Developer Guide.
  final pulumi.Input<List<ConfigurationOptionSetting>>? optionSettings;
  /// The Amazon Resource Name (ARN) of the custom platform. For more information, see [Custom Platforms](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html) in the AWS Elastic Beanstalk Developer Guide.
  final pulumi.Input<String>? platformArn;
  /// The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For example, 64bit Amazon Linux 2013.09 running Tomcat 7 Java 7. A solution stack specifies the operating system, runtime, and application server for a configuration template. It also determines the set of configuration options as well as the possible and default values. For more information, see [Supported Platforms](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html) in the AWS Elastic Beanstalk Developer Guide. You must specify SolutionStackName if you don't specify PlatformArn, EnvironmentId, or SourceConfiguration. Use the ListAvailableSolutionStacks API to obtain a list of available solution stacks.
  final pulumi.Input<String>? solutionStackName;
  /// An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration.Values specified in OptionSettings override any values obtained from the SourceConfiguration.You must specify SourceConfiguration if you don't specify PlatformArn, EnvironmentId, or SolutionStackName.Constraint: If both solution stack name and source configuration are specified, the solution stack of the source configuration template must match the specified solution stack name.
  final pulumi.Input<SourceConfiguration>? sourceConfiguration;
  /// The name of the configuration template
  final pulumi.Input<String>? templateName;

  /// Creates a new [AwsElasticBeanstalkConfigurationTemplateProperties].
  /// [applicationName] The name of the Elastic Beanstalk application to associate with this configuration template.
  /// [description] An optional description for this configuration.
  /// [environmentId] The ID of an environment whose settings you want to use to create the configuration template. You must specify EnvironmentId if you don't specify PlatformArn, SolutionStackName, or SourceConfiguration.
  /// [optionSettings] Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these values override the values obtained from the solution stack or the source configuration template. For a complete list of Elastic Beanstalk configuration options, see [Option Values](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html) in the AWS Elastic Beanstalk Developer Guide.
  /// [platformArn] The Amazon Resource Name (ARN) of the custom platform. For more information, see [Custom Platforms](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html) in the AWS Elastic Beanstalk Developer Guide.
  /// [solutionStackName] The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For example, 64bit Amazon Linux 2013.09 running Tomcat 7 Java 7. A solution stack specifies the operating system, runtime, and application server for a configuration template. It also determines the set of configuration options as well as the possible and default values. For more information, see [Supported Platforms](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html) in the AWS Elastic Beanstalk Developer Guide. You must specify SolutionStackName if you don't specify PlatformArn, EnvironmentId, or SourceConfiguration. Use the ListAvailableSolutionStacks API to obtain a list of available solution stacks.
  /// [sourceConfiguration] An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified configuration template to create a new configuration.Values specified in OptionSettings override any values obtained from the SourceConfiguration.You must specify SourceConfiguration if you don't specify PlatformArn, EnvironmentId, or SolutionStackName.Constraint: If both solution stack name and source configuration are specified, the solution stack of the source configuration template must match the specified solution stack name.
  /// [templateName] The name of the configuration template
  AwsElasticBeanstalkConfigurationTemplateProperties({
    this.applicationName,
    this.description,
    this.environmentId,
    this.optionSettings,
    this.platformArn,
    this.solutionStackName,
    this.sourceConfiguration,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'description': ?description,
      'environmentId': ?environmentId,
      'optionSettings': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationOptionSetting>, List<Map<String, dynamic>>>(optionSettings, (value) => pulumi.Input.encodeList<ConfigurationOptionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformArn': ?platformArn,
      'solutionStackName': ?solutionStackName,
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
      'templateName': ?templateName,
    };
  }

  factory AwsElasticBeanstalkConfigurationTemplateProperties.fromMap(Map<String, dynamic> map) {
    return AwsElasticBeanstalkConfigurationTemplateProperties(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionSettings: (() { final guardedValue = map['optionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationOptionSetting>(guardedValue, (value) => ConfigurationOptionSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformArn: (() { final guardedValue = map['platformArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionStackName: (() { final guardedValue = map['solutionStackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

