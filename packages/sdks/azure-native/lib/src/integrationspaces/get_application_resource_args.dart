// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_application_resource_args_doc}
/// Arguments for getApplicationResource.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_application_resource_args_doc}
class GetApplicationResourceArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the application resource.
  final pulumi.Input<String> resourceName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetApplicationResourceArgs].
  /// [applicationName] The name of the Application
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the application resource.
  /// [spaceName] The name of the space
  GetApplicationResourceArgs({
    required this.applicationName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'spaceName': spaceName,
    };
  }

  factory GetApplicationResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationResourceArgs(
      applicationName: (map['applicationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      spaceName: (map['spaceName'] as String).input(),
    );
  }
}

