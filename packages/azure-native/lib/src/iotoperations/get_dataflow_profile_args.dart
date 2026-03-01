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
  GetDataflowProfileArgs({
    required String dataflowProfileName,
    required String instanceName,
    required String resourceGroupName,
  }) :
      dataflowProfileName = pulumi.Input.asInput<String>(dataflowProfileName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowProfileName': dataflowProfileName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDataflowProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetDataflowProfileArgs(
      dataflowProfileName: map['dataflowProfileName'] as String,
      instanceName: map['instanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

