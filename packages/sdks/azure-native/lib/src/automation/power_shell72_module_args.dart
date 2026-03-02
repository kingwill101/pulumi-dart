// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';

/// {@template pulumi_automation_power_shell72_module_args_doc}
/// The set of arguments for PowerShell72Module.
/// {@endtemplate}
/// {@macro pulumi_automation_power_shell72_module_args_doc}
class PowerShell72ModuleArgs {
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
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PowerShell72ModuleArgs].
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Sets the hash.
  /// [location] Sets the location of the resource.
  /// [moduleName] The name of module.
  /// [name] Sets name of the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Sets the tags attached to the resource.
  PowerShell72ModuleArgs({
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

  factory PowerShell72ModuleArgs.fromMap(Map<String, dynamic> map) {
    return PowerShell72ModuleArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      contentLink: (ContentLink.fromMap((map['contentLink'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      moduleName: map['moduleName'] == null ? null : (map['moduleName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

