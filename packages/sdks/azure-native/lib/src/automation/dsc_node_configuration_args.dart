// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_source.dart';
import 'dsc_configuration_association_property.dart';

/// {@template pulumi_automation_dsc_node_configuration_args_doc}
/// The set of arguments for DscNodeConfiguration.
/// {@endtemplate}
/// {@macro pulumi_automation_dsc_node_configuration_args_doc}
class DscNodeConfigurationArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the configuration of the node.
  final pulumi.Input<DscConfigurationAssociationProperty> configuration;
  /// If a new build version of NodeConfiguration is required.
  final pulumi.Input<bool>? incrementNodeConfigurationBuild;
  /// Name of the node configuration.
  final pulumi.Input<String>? name;
  /// The Dsc node configuration name.
  final pulumi.Input<String>? nodeConfigurationName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the source.
  final pulumi.Input<ContentSource> source;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DscNodeConfigurationArgs].
  /// [automationAccountName] The name of the automation account.
  /// [configuration] Gets or sets the configuration of the node.
  /// [incrementNodeConfigurationBuild] If a new build version of NodeConfiguration is required.
  /// [name] Name of the node configuration.
  /// [nodeConfigurationName] The Dsc node configuration name.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [source] Gets or sets the source.
  /// [tags] Gets or sets the tags attached to the resource.
  DscNodeConfigurationArgs({
    required this.automationAccountName,
    required this.configuration,
    this.incrementNodeConfigurationBuild,
    this.name,
    this.nodeConfigurationName,
    required this.resourceGroupName,
    required this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'configuration': pulumi.Input.mapInputValue<DscConfigurationAssociationProperty, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'incrementNodeConfigurationBuild': ?incrementNodeConfigurationBuild,
      'name': ?name,
      'nodeConfigurationName': ?nodeConfigurationName,
      'resourceGroupName': resourceGroupName,
      'source': pulumi.Input.mapInputValue<ContentSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DscNodeConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DscNodeConfigurationArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      configuration: pulumi.Input.fromValue(DscConfigurationAssociationProperty.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      incrementNodeConfigurationBuild: (() { final guardedValue = map['incrementNodeConfigurationBuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfigurationName: (() { final guardedValue = map['nodeConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: pulumi.Input.fromValue(ContentSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

