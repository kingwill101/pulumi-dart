// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_application_resource_args_doc}
/// The set of arguments for ApplicationResource.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_application_resource_args_doc}
class ApplicationResourceArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Arm id of the application resource.
  final pulumi.Input<String> resourceId;
  /// The kind of the application resource.
  final pulumi.Input<String>? resourceKind;
  /// The name of the application resource.
  final pulumi.Input<String>? resourceName;
  /// The type of the application resource.
  final pulumi.Input<String> resourceType;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [ApplicationResourceArgs].
  /// [applicationName] The name of the Application
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The Arm id of the application resource.
  /// [resourceKind] The kind of the application resource.
  /// [resourceName] The name of the application resource.
  /// [resourceType] The type of the application resource.
  /// [spaceName] The name of the space
  ApplicationResourceArgs({
    required this.applicationName,
    required this.resourceGroupName,
    required this.resourceId,
    this.resourceKind,
    this.resourceName,
    required this.resourceType,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
      'resourceKind': ?resourceKind,
      'resourceName': ?resourceName,
      'resourceType': resourceType,
      'spaceName': spaceName,
    };
  }

  factory ApplicationResourceArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationResourceArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceKind: (() { final guardedValue = map['resourceKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
    );
  }
}

