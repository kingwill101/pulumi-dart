// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';

/// {@template pulumi_automation_module_args_doc}
/// The set of arguments for Module.
/// {@endtemplate}
/// {@macro pulumi_automation_module_args_doc}
class ModuleArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Sets the hash.
  final pulumi.Input<ContentLink> contentLink;
  /// Sets the location of the resource.
  final pulumi.Input<String>? location;
  /// The name of module.
  final pulumi.Input<String>? moduleName;
  /// Sets name of the resource.
  final pulumi.Input<String>? name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModuleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Sets the hash.
  /// [location] Sets the location of the resource.
  /// [moduleName] The name of module.
  /// [name] Sets name of the resource.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [tags] Sets the tags attached to the resource.
  ModuleArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<ContentLink> contentLink,
    pulumi.Output<String>? location,
    pulumi.Output<String>? moduleName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentLink = pulumi.Input.asInput<ContentLink>(contentLink),
      location = pulumi.Input.asOptionalInput<String>(location),
      moduleName = pulumi.Input.asOptionalInput<String>(moduleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentLink': pulumi.Input.mapInputValue<ContentLink, Map<String, dynamic>>(contentLink, (value) => value.toMap()),
      'location': ?location,
      'moduleName': ?moduleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ModuleArgs.fromMap(Map<String, dynamic> map) {
    return ModuleArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      contentLink: pulumi.Output.create<ContentLink>(ContentLink.fromMap((map['contentLink'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      moduleName: map['moduleName'] == null ? null : pulumi.Output.create<String>(map['moduleName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

