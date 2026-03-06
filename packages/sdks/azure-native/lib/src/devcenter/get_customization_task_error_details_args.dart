// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_customization_task_error_details_args_doc}
/// Arguments for getCustomizationTaskErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_customization_task_error_details_args_doc}
class GetCustomizationTaskErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Task.
  final pulumi.Input<String> taskName;

  /// Creates a new [GetCustomizationTaskErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [taskName] The name of the Task.
  const GetCustomizationTaskErrorDetailsArgs({
    required this.catalogName,
    required this.devCenterName,
    required this.resourceGroupName,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
      'taskName': taskName,
    };
  }

  factory GetCustomizationTaskErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomizationTaskErrorDetailsArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
    );
  }
}

