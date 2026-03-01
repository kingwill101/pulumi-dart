// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_template_setting.dart';

/// Input properties used for looking up and filtering ConfigurationTemplate resources.
class ConfigurationTemplateState {
  /// name of the application to associate with this configuration template
  final pulumi.Input<String>? application;
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
  /// off of. Example stacks can be found in the [Amazon API documentation][1]
  final pulumi.Input<String>? solutionStackName;

  /// Creates a new [ConfigurationTemplateState].
  /// [application] name of the application to associate with this configuration template
  /// [description] Short description of the Template
  /// [environmentId] The ID of the environment used with this configuration template
  /// [name] A unique name for this Template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Option settings to configure the new Environment. These
  /// [solutionStackName] A solution stack to base your Template
  ConfigurationTemplateState({
    pulumi.Output<String>? application,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<ConfigurationTemplateSetting>>? settings,
    pulumi.Output<String>? solutionStackName,
  }) :
      application = pulumi.Input.asOptionalInput<String>(application),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<List<ConfigurationTemplateSetting>>(settings),
      solutionStackName = pulumi.Input.asOptionalInput<String>(solutionStackName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'description': ?description,
      'environmentId': ?environmentId,
      'name': ?name,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationTemplateSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ConfigurationTemplateSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionStackName': ?solutionStackName,
    };
  }

  factory ConfigurationTemplateState.fromMap(Map<String, dynamic> map) {
    return ConfigurationTemplateState(
      application: map['application'] == null ? null : pulumi.Output.create<String>(map['application'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<List<ConfigurationTemplateSetting>>(pulumi.Input.decodeList<ConfigurationTemplateSetting>(map['settings'], (value) => ConfigurationTemplateSetting.fromMap((value as Map).cast<String, dynamic>()))),
      solutionStackName: map['solutionStackName'] == null ? null : pulumi.Output.create<String>(map['solutionStackName'] as String),
    );
  }
}

