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
    required this.automationAccountName,
    this.configurationName,
    this.description,
    this.location,
    this.logProgress,
    this.logVerbose,
    this.name,
    this.parameters,
    required this.resourceGroupName,
    required this.source,
    this.tags,
  });

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
      automationAccountName: (map['automationAccountName'] as String).input(),
      configurationName: map['configurationName'] == null ? null : (map['configurationName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logProgress: map['logProgress'] == null ? null : (map['logProgress']! as bool).input(),
      logVerbose: map['logVerbose'] == null ? null : (map['logVerbose']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<DscConfigurationParameter>(map['parameters']!, (value) => DscConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: (ContentSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

