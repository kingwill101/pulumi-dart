// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_dataflow_args_doc}
/// Arguments for getDataflow.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_dataflow_args_doc}
class GetDataflowArgs {
  /// Name of Instance dataflowProfile dataflow resource
  final pulumi.Input<String> dataflowName;
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String> dataflowProfileName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataflowArgs].
  /// [dataflowName] Name of Instance dataflowProfile dataflow resource
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDataflowArgs({
    required this.dataflowName,
    required this.dataflowProfileName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowName': dataflowName,
      'dataflowProfileName': dataflowProfileName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowArgs(
      dataflowName: (map['dataflowName'] as String).input(),
      dataflowProfileName: (map['dataflowProfileName'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

