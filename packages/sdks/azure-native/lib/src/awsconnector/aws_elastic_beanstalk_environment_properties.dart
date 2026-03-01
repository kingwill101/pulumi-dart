// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_setting.dart';
import 'tag.dart';
import 'tier.dart';

/// Definition of awsElasticBeanstalkEnvironment
class AwsElasticBeanstalkEnvironmentProperties {
  /// The name of the application that is associated with this environment.
  final String? applicationName;
  /// If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.
  final String? cnamePrefix;
  /// Your description for this environment.
  final String? description;
  /// Property endpointURL
  final String? endpointURL;
  /// A unique name for the environment.
  final String? environmentName;
  /// The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role.
  final String? operationsRole;
  /// Key-value pairs defining configuration options for this environment, such as the instance type.
  final List<OptionSetting>? optionSettings;
  /// The Amazon Resource Name (ARN) of the custom platform to use with the environment.
  final String? platformArn;
  /// The name of an Elastic Beanstalk solution stack (platform version) to use with the environment.
  final String? solutionStackName;
  /// Specifies the tags applied to resources in the environment.
  final List<Tag>? tags;
  /// The name of the Elastic Beanstalk configuration template to use with the environment.
  final String? templateName;
  /// Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.
  final Tier? tier;
  /// The name of the application version to deploy.
  final String? versionLabel;

  /// Creates a new [AwsElasticBeanstalkEnvironmentProperties].
  /// [applicationName] The name of the application that is associated with this environment.
  /// [cnamePrefix] If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.
  /// [description] Your description for this environment.
  /// [endpointURL] Property endpointURL
  /// [environmentName] A unique name for the environment.
  /// [operationsRole] The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role.
  /// [optionSettings] Key-value pairs defining configuration options for this environment, such as the instance type.
  /// [platformArn] The Amazon Resource Name (ARN) of the custom platform to use with the environment.
  /// [solutionStackName] The name of an Elastic Beanstalk solution stack (platform version) to use with the environment.
  /// [tags] Specifies the tags applied to resources in the environment.
  /// [templateName] The name of the Elastic Beanstalk configuration template to use with the environment.
  /// [tier] Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.
  /// [versionLabel] The name of the application version to deploy.
  AwsElasticBeanstalkEnvironmentProperties({
    this.applicationName,
    this.cnamePrefix,
    this.description,
    this.endpointURL,
    this.environmentName,
    this.operationsRole,
    this.optionSettings,
    this.platformArn,
    this.solutionStackName,
    this.tags,
    this.templateName,
    this.tier,
    this.versionLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'cnamePrefix': ?cnamePrefix,
      'description': ?description,
      'endpointURL': ?endpointURL,
      'environmentName': ?environmentName,
      'operationsRole': ?operationsRole,
      'optionSettings': ?optionSettings == null ? null : pulumi.Input.encodeList<OptionSetting, Map<String, dynamic>>(optionSettings!, (value) => value.toMap()),
      'platformArn': ?platformArn,
      'solutionStackName': ?solutionStackName,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'templateName': ?templateName,
      'tier': ?tier == null ? null : tier!.value,
      'versionLabel': ?versionLabel,
    };
  }

  factory AwsElasticBeanstalkEnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return AwsElasticBeanstalkEnvironmentProperties(
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      cnamePrefix: map['cnamePrefix'] == null ? null : map['cnamePrefix'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      endpointURL: map['endpointURL'] == null ? null : map['endpointURL'] as String,
      environmentName: map['environmentName'] == null ? null : map['environmentName'] as String,
      operationsRole: map['operationsRole'] == null ? null : map['operationsRole'] as String,
      optionSettings: map['optionSettings'] == null ? null : pulumi.Input.decodeList<OptionSetting>(map['optionSettings'], (value) => OptionSetting.fromMap((value as Map).cast<String, dynamic>())),
      platformArn: map['platformArn'] == null ? null : map['platformArn'] as String,
      solutionStackName: map['solutionStackName'] == null ? null : map['solutionStackName'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
      tier: map['tier'] == null ? null : Tier.fromValue(map['tier'] as String),
      versionLabel: map['versionLabel'] == null ? null : map['versionLabel'] as String,
    );
  }
}

