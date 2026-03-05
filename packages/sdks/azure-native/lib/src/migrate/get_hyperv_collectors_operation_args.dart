// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_hyperv_collectors_operation_args_doc}
/// Arguments for getHypervCollectorsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_hyperv_collectors_operation_args_doc}
class GetHypervCollectorsOperationArgs {
  /// Hyper-V collector ARM name
  final pulumi.Input<String> hypervCollectorName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHypervCollectorsOperationArgs].
  /// [hypervCollectorName] Hyper-V collector ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHypervCollectorsOperationArgs({
    required this.hypervCollectorName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hypervCollectorName': hypervCollectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHypervCollectorsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetHypervCollectorsOperationArgs(
      hypervCollectorName: pulumi.Input.fromValue(map['hypervCollectorName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

