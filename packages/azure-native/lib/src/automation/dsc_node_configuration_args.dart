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
    required String automationAccountName,
    required DscConfigurationAssociationProperty configuration,
    bool? incrementNodeConfigurationBuild,
    String? name,
    String? nodeConfigurationName,
    required String resourceGroupName,
    required ContentSource source,
    Map<String, String>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      configuration = pulumi.Input.asInput<DscConfigurationAssociationProperty>(configuration),
      incrementNodeConfigurationBuild = pulumi.Input.asOptionalInput<bool>(incrementNodeConfigurationBuild),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfigurationName = pulumi.Input.asOptionalInput<String>(nodeConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<ContentSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      automationAccountName: map['automationAccountName'] as String,
      configuration: DscConfigurationAssociationProperty.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      incrementNodeConfigurationBuild: map['incrementNodeConfigurationBuild'] == null ? null : map['incrementNodeConfigurationBuild'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      nodeConfigurationName: map['nodeConfigurationName'] == null ? null : map['nodeConfigurationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      source: ContentSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

