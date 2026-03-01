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
  GetCustomizationTaskErrorDetailsArgs({
    required String catalogName,
    required String devCenterName,
    required String resourceGroupName,
    required String taskName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      taskName = pulumi.Input.asInput<String>(taskName);

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
      catalogName: map['catalogName'] as String,
      devCenterName: map['devCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      taskName: map['taskName'] as String,
    );
  }
}

