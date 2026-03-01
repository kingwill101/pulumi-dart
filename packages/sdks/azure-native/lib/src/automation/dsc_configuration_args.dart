// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_source.dart';
import 'dsc_configuration_parameter.dart';

/// {@template pulumi_automation_dsc_configuration_args_doc}
/// The set of arguments for DscConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_configuration_args_doc}
class DscConfigurationArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The create or update parameters for configuration.
  final pulumi.Input<String>? configurationName;
  /// Gets or sets the description of the configuration.
  final pulumi.Input<String>? description;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String>? location;
  /// Gets or sets progress log option.
  final pulumi.Input<bool>? logProgress;
  /// Gets or sets verbose log option.
  final pulumi.Input<bool>? logVerbose;
  /// Gets or sets name of the resource.
  final pulumi.Input<String>? name;
  /// Gets or sets the configuration parameters.
  final pulumi.Input<Map<String, DscConfigurationParameter>>? parameters;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the source.
  final pulumi.Input<ContentSource> source;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DscConfigurationArgs].
  /// [automationAccountName] The name of the automation account.
  /// [configurationName] The create or update parameters for configuration.
  /// [description] Gets or sets the description of the configuration.
  /// [location] Gets or sets the location of the resource.
  /// [logProgress] Gets or sets progress log option.
  /// [logVerbose] Gets or sets verbose log option.
  /// [name] Gets or sets name of the resource.
  /// [parameters] Gets or sets the configuration parameters.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [source] Gets or sets the source.
  /// [tags] Gets or sets the tags attached to the resource.
  DscConfigurationArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? configurationName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logProgress,
    pulumi.Output<bool>? logVerbose,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, DscConfigurationParameter>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ContentSource> source,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      logProgress = pulumi.Input.asOptionalInput<bool>(logProgress),
      logVerbose = pulumi.Input.asOptionalInput<bool>(logVerbose),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, DscConfigurationParameter>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<ContentSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'configurationName': ?configurationName,
      'description': ?description,
      'location': ?location,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, DscConfigurationParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<DscConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'source': pulumi.Input.mapInputValue<ContentSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DscConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscConfigurationArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logProgress: map['logProgress'] == null ? null : pulumi.Output.create<bool>(map['logProgress'] as bool),
      logVerbose: map['logVerbose'] == null ? null : pulumi.Output.create<bool>(map['logVerbose'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, DscConfigurationParameter>>(pulumi.Input.decodeMapValues<DscConfigurationParameter>(map['parameters'], (value) => DscConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: pulumi.Output.create<ContentSource>(ContentSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

