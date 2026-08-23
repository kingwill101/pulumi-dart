// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_dataflow_profile_args_doc}
/// Arguments for getDataflowProfile.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_dataflow_profile_args_doc}
class GetDataflowProfileArgs {
  /// Name of Instance dataflowProfile resource
  final pulumi.Input<String> dataflowProfileName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDataflowProfileArgs].
  /// [dataflowProfileName] Name of Instance dataflowProfile resource
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDataflowProfileArgs({
    required this.dataflowProfileName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowProfileName': dataflowProfileName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowProfileArgs(
      dataflowProfileName: pulumi.Input.fromValue(map['dataflowProfileName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
