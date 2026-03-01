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
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceId,
    pulumi.Output<String>? resourceKind,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<String> resourceType,
    required pulumi.Output<String> spaceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      resourceKind = pulumi.Input.asOptionalInput<String>(resourceKind),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      spaceName = pulumi.Input.asInput<String>(spaceName);

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
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      resourceKind: map['resourceKind'] == null ? null : pulumi.Output.create<String>(map['resourceKind'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

