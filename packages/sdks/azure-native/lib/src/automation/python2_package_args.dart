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
      automationAccountName: (map['automationAccountName'] as String).input(),
      contentLink: (ContentLink.fromMap((map['contentLink'] as Map).cast<String, dynamic>())).input(),
      packageName: map['packageName'] == null ? null : (map['packageName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

