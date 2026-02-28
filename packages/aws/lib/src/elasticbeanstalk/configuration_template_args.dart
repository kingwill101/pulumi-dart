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
  /// off of. Example stacks can be found in the [Amazon API documentation][1]
  final pulumi.Input<String>? solutionStackName;

  /// Creates a new [ConfigurationTemplateArgs].
  /// [application] name of the application to associate with this configuration template
  /// [description] Short description of the Template
  /// [environmentId] The ID of the environment used with this configuration template
  /// [name] A unique name for this Template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Option settings to configure the new Environment. These
  /// [solutionStackName] A solution stack to base your Template
  ConfigurationTemplateArgs({
    required String application,
    String? description,
    String? environmentId,
    String? name,
    String? region,
    List<ConfigurationTemplateSetting>? settings,
    String? solutionStackName,
  })  : application = pulumi.Input.asInput<String>(application),
        description = pulumi.Input.asOptionalInput<String>(description),
        environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        settings =
            pulumi.Input.asOptionalInput<List<ConfigurationTemplateSetting>>(
                settings),
        solutionStackName =
            pulumi.Input.asOptionalInput<String>(solutionStackName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['application'] = application;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final environmentIdValue = environmentId;
    if (environmentIdValue != null) {
      map['environmentId'] = environmentIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = pulumi.Input.mapOptionalInputValue<
              List<ConfigurationTemplateSetting>, List<Map<String, dynamic>>>(
          settingsValue,
          (value) => pulumi.Input.encodeList<ConfigurationTemplateSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final solutionStackNameValue = solutionStackName;
    if (solutionStackNameValue != null) {
      map['solutionStackName'] = solutionStackNameValue;
    }
    return map;
  }

  factory ConfigurationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationTemplateArgs(
      application: map['application'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      environmentId:
          map['environmentId'] == null ? null : map['environmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      settings: map['settings'] == null
          ? null
          : pulumi.Input.decodeList<ConfigurationTemplateSetting>(
              map['settings'],
              (value) => ConfigurationTemplateSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      solutionStackName: map['solutionStackName'] == null
          ? null
          : map['solutionStackName'] as String,
    );
  }
}
