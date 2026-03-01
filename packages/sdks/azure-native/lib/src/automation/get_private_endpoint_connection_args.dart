// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_automation_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [automationAccountName] The name of the automation account.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> automationAccountName,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

