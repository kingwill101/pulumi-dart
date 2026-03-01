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
  /// The name of python package.
  final pulumi.Input<String>? packageName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the tags attached to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Python2PackageArgs].
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Gets or sets the module content link.
  /// [packageName] The name of python package.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [tags] Gets or sets the tags attached to the resource.
  Python2PackageArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<ContentLink> contentLink,
    pulumi.Output<String>? packageName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentLink = pulumi.Input.asInput<ContentLink>(contentLink),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      contentLink: pulumi.Output.create<ContentLink>(ContentLink.fromMap((map['contentLink'] as Map).cast<String, dynamic>())),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

