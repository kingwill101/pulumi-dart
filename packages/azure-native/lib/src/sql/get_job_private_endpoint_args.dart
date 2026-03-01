// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_job_private_endpoint_args_doc}
/// Arguments for getJobPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_sql_get_job_private_endpoint_args_doc}
class GetJobPrivateEndpointArgs {
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the private endpoint to get.
  final pulumi.Input<String> privateEndpointName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetJobPrivateEndpointArgs].
  /// [jobAgentName] The name of the job agent.
  /// [privateEndpointName] The name of the private endpoint to get.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetJobPrivateEndpointArgs({
    required String jobAgentName,
    required String privateEndpointName,
    required String resourceGroupName,
    required String serverName,
  }) :
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      privateEndpointName = pulumi.Input.asInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobAgentName': jobAgentName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetJobPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetJobPrivateEndpointArgs(
      jobAgentName: map['jobAgentName'] as String,
      privateEndpointName: map['privateEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

