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
    required pulumi.Output<String> dataflowName,
    required pulumi.Output<String> dataflowProfileName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      dataflowName = pulumi.Input.asInput<String>(dataflowName),
      dataflowProfileName = pulumi.Input.asInput<String>(dataflowProfileName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      dataflowName: pulumi.Output.create<String>(map['dataflowName'] as String),
      dataflowProfileName: pulumi.Output.create<String>(map['dataflowProfileName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

