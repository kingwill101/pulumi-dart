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
  /// Gets or sets the module content link.
  final pulumi.Input<ContentLink> contentLink;
  /// Gets or sets the location of the resource.
  final pulumi.Input<String?>? location;
  /// The module name.
  final pulumi.Input<String?>? moduleName;
  /// Gets or sets name of the resource.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ModuleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Gets or sets the module content link.
  /// [location] Gets or sets the location of the resource.
  /// [moduleName] The module name.
  /// [name] Gets or sets name of the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets the tags attached to the resource.
  const ModuleArgs({
    required this.automationAccountName,
    required this.contentLink,
    this.location,
    this.moduleName,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      contentLink: pulumi.Input.fromValue(ContentLink.fromMap((map['contentLink']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moduleName: (() { final guardedValue = map['moduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
