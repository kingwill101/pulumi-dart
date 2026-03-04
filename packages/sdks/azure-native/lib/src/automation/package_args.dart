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
    this.allOf,
    required this.automationAccountName,
    required this.contentLink,
    this.packageName,
    required this.resourceGroupName,
    required this.runtimeEnvironmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf':
          ?pulumi.Input.mapOptionalInputValue<
            TrackedResource,
            Map<String, dynamic>
          >(allOf, (value) => value.toMap()),
      'automationAccountName': automationAccountName,
      'contentLink':
          pulumi.Input.mapInputValue<ContentLink, Map<String, dynamic>>(
            contentLink,
            (value) => value.toMap(),
          ),
      'packageName': ?packageName,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': runtimeEnvironmentName,
    };
  }

  factory PackageArgs.fromMap(Map<String, dynamic> map) {
    return PackageArgs(
      allOf: (() {
        final guardedValue = map['allOf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrackedResource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      automationAccountName: pulumi.Input.fromValue(
        map['automationAccountName'] as String,
      ),
      contentLink: pulumi.Input.fromValue(
        ContentLink.fromMap(
          (map['contentLink']! as Map).cast<String, dynamic>(),
        ),
      ),
      packageName: (() {
        final guardedValue = map['packageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      runtimeEnvironmentName: pulumi.Input.fromValue(
        map['runtimeEnvironmentName'] as String,
      ),
    );
  }
}
