// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';

/// {@template pulumi_automation_python2_package_args_doc}
/// The set of arguments for Python2Package.
/// {@endtemplate}
/// {@macro pulumi_automation_python2_package_args_doc}
class Python2PackageArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the module content link.
  final pulumi.Input<ContentLink> contentLink;
  /// The python package name.
  final pulumi.Input<String?>? packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [Python2PackageArgs].
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Gets or sets the module content link.
  /// [packageName] The python package name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets the tags attached to the resource.
  const Python2PackageArgs({
    required this.automationAccountName,
    required this.contentLink,
    this.packageName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'contentLink': pulumi.Input.mapInputValue<ContentLink, Map<String, dynamic>>(contentLink, (value) => value.toMap()),
      'packageName': ?packageName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Python2PackageArgs.fromMap(Map<String, dynamic> map) {
    return Python2PackageArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      contentLink: pulumi.Input.fromValue(ContentLink.fromMap((map['contentLink']! as Map).cast<String, dynamic>())),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
