// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_run_log_sas_url_args_doc}
/// Arguments for listRunLogSasUrl.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_run_log_sas_url_args_doc}
class ListRunLogSasUrlArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The run ID.
  final pulumi.Input<String> runId;

  /// Creates a new [ListRunLogSasUrlArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [runId] The run ID.
  ListRunLogSasUrlArgs({
    required String registryName,
    required String resourceGroupName,
    required String runId,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runId = pulumi.Input.asInput<String>(runId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'runId': runId,
    };
  }

  factory ListRunLogSasUrlArgs.fromMap(Map<String, dynamic> map) {
    return ListRunLogSasUrlArgs(
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runId: map['runId'] as String,
    );
  }
}

