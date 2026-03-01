// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_rds_export_task_args_doc}
/// Arguments for getRdsExportTask.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_rds_export_task_args_doc}
class GetRdsExportTaskArgs {
  /// Name of RdsExportTask
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRdsExportTaskArgs].
  /// [name] Name of RdsExportTask
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRdsExportTaskArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRdsExportTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsExportTaskArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

