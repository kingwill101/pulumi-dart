// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_setting_response.dart';
import 'tag_response.dart';
import 'tier_response.dart';

/// Definition of awsElasticBeanstalkEnvironment
class AwsElasticBeanstalkEnvironmentPropertiesResponse {
  /// The name of the application that is associated with this environment.
  final pulumi.Input<String>? applicationName;
  /// If specified, the environment attempts to use this value as the prefix for the CNAME in your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by appending a random alphanumeric string to the environment name.
  final pulumi.Input<String>? cnamePrefix;
  /// Your description for this environment.
  final pulumi.Input<String>? description;
  /// Property endpointURL
  final pulumi.Input<String>? endpointURL;
  /// A unique name for the environment.
  final pulumi.Input<String>? environmentName;
  /// The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's operations role.
  final pulumi.Input<String>? operationsRole;
  /// Key-value pairs defining configuration options for this environment, such as the instance type.
  final pulumi.Input<List<OptionSettingResponse>>? optionSettings;
  /// The Amazon Resource Name (ARN) of the custom platform to use with the environment.
  final pulumi.Input<String>? platformArn;
  /// The name of an Elastic Beanstalk solution stack (platform version) to use with the environment.
  final pulumi.Input<String>? solutionStackName;
  /// Specifies the tags applied to resources in the environment.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The name of the Elastic Beanstalk configuration template to use with the environment.
  final pulumi.Input<String>? templateName;
  /// Specifies the tier to use in creating this environment. The environment tier that you choose determines whether Elastic Beanstalk provisions resources to support a web application that handles HTTP(S) requests or a web application that handles background-processing tasks.
  final pulumi.Input<TierResponse>? tier;
  /// The name of the application version to deploy.
  final pulumi.Input<String>? versionLabel;

  /// Creates a new [AwsElasticBeanstalkEnvironmentPropertiesResponse].
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
  const AwsElasticBeanstalkEnvironmentPropertiesResponse({
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
      'optionSettings': ?pulumi.Input.mapOptionalInputValue<List<OptionSettingResponse>, List<Map<String, dynamic>>>(optionSettings, (value) => pulumi.Input.encodeList<OptionSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformArn': ?platformArn,
      'solutionStackName': ?solutionStackName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateName': ?templateName,
      'tier': ?pulumi.Input.mapOptionalInputValue<TierResponse, Map<String, dynamic>>(tier, (value) => value.toMap()),
      'versionLabel': ?versionLabel,
    };
  }

  factory AwsElasticBeanstalkEnvironmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticBeanstalkEnvironmentPropertiesResponse(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cnamePrefix: (() { final guardedValue = map['cnamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointURL: (() { final guardedValue = map['endpointURL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentName: (() { final guardedValue = map['environmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationsRole: (() { final guardedValue = map['operationsRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionSettings: (() { final guardedValue = map['optionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptionSettingResponse>(guardedValue, (value) => OptionSettingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformArn: (() { final guardedValue = map['platformArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionStackName: (() { final guardedValue = map['solutionStackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TierResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versionLabel: (() { final guardedValue = map['versionLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
