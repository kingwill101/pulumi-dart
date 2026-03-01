// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_application_group_args_doc}
/// Arguments for getApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_application_group_args_doc}
class GetApplicationGroupArgs {
  /// The name of the application group
  final pulumi.Input<String> applicationGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationGroupArgs].
  /// [applicationGroupName] The name of the application group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApplicationGroupArgs({
    required String applicationGroupName,
    required String resourceGroupName,
  }) :
      applicationGroupName = pulumi.Input.asInput<String>(applicationGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupArgs(
      applicationGroupName: map['applicationGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

