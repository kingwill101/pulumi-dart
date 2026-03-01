// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link.dart';
import 'tracked_resource.dart';

/// {@template pulumi_automation_package_args_doc}
/// The set of arguments for Package.
/// {@endtemplate}
/// {@macro pulumi_automation_package_args_doc}
class PackageArgs {
  /// The resource model definition for an Azure Resource Manager tracked top level resource which has 'tags' and a 'location'
  final pulumi.Input<TrackedResource>? allOf;
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the package content link.
  final pulumi.Input<ContentLink> contentLink;
  /// The name of Package.
  final pulumi.Input<String>? packageName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Runtime Environment.
  final pulumi.Input<String> runtimeEnvironmentName;

  /// Creates a new [PackageArgs].
  /// [allOf] The resource model definition for an Azure Resource Manager tracked top level resource which has 'tags' and a 'location'
  /// [automationAccountName] The name of the automation account.
  /// [contentLink] Gets or sets the package content link.
  /// [packageName] The name of Package.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  PackageArgs({
    pulumi.Output<TrackedResource>? allOf,
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<ContentLink> contentLink,
    pulumi.Output<String>? packageName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> runtimeEnvironmentName,
  }) :
      allOf = pulumi.Input.asOptionalInput<TrackedResource>(allOf),
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      contentLink = pulumi.Input.asInput<ContentLink>(contentLink),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeEnvironmentName = pulumi.Input.asInput<String>(runtimeEnvironmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<TrackedResource, Map<String, dynamic>>(allOf, (value) => value.toMap()),
      'automationAccountName': automationAccountName,
      'contentLink': pulumi.Input.mapInputValue<ContentLink, Map<String, dynamic>>(contentLink, (value) => value.toMap()),
      'packageName': ?packageName,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': runtimeEnvironmentName,
    };
  }

  factory PackageArgs.fromMap(Map<String, dynamic> map) {
    return PackageArgs(
      allOf: map['allOf'] == null ? null : pulumi.Output.create<TrackedResource>(TrackedResource.fromMap((map['allOf'] as Map).cast<String, dynamic>())),
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      contentLink: pulumi.Output.create<ContentLink>(ContentLink.fromMap((map['contentLink'] as Map).cast<String, dynamic>())),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runtimeEnvironmentName: pulumi.Output.create<String>(map['runtimeEnvironmentName'] as String),
    );
  }
}

