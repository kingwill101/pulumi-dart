// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_template_setting.dart';

/// {@template pulumi_elasticbeanstalk_configuration_template_configuration_template_args_doc}
/// The set of arguments for ConfigurationTemplate.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_configuration_template_configuration_template_args_doc}
class ConfigurationTemplateArgs {
  /// name of the application to associate with this configuration template
  final pulumi.Input<String> application;
  /// Short description of the Template
  final pulumi.Input<String>? description;
  /// The ID of the environment used with this configuration template
  final pulumi.Input<String>? environmentId;
  /// A unique name for this Template.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  final pulumi.Input<List<ConfigurationTemplateSetting>>? settings;
  /// A solution stack to base your Template
  /// off of. Example stacks can be found in the [Amazon API documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
  final pulumi.Input<String>? solutionStackName;

  /// Creates a new [ConfigurationTemplateArgs].
  /// [application] name of the application to associate with this configuration template
  /// [description] Short description of the Template
  /// [environmentId] The ID of the environment used with this configuration template
  /// [name] A unique name for this Template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Option settings to configure the new Environment. These
  /// [solutionStackName] A solution stack to base your Template
  const ConfigurationTemplateArgs({
    required this.application,
    this.description,
    this.environmentId,
    this.name,
    this.region,
    this.settings,
    this.solutionStackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'description': ?description,
      'environmentId': ?environmentId,
      'name': ?name,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationTemplateSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ConfigurationTemplateSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionStackName': ?solutionStackName,
    };
  }

  factory ConfigurationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationTemplateArgs(
      application: pulumi.Input.fromValue(map['application'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationTemplateSetting>(guardedValue, (value) => ConfigurationTemplateSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      solutionStackName: (() { final guardedValue = map['solutionStackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
