// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_application_args_doc}
class GetApplicationArgs {
  /// The constant value for the application name.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationArgs].
  /// [applicationName] The constant value for the application name.
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group.
  GetApplicationArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

