// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scom_managed_gateway_args_doc}
/// The set of arguments for ManagedGateway.
/// {@endtemplate}
/// {@macro pulumi_scom_managed_gateway_args_doc}
class ManagedGatewayArgs {
  /// Name of the SCOM managed instance.
  final pulumi.Input<String> instanceName;
  /// The gateway resource name.
  final pulumi.Input<String>? managedGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedGatewayArgs].
  /// [instanceName] Name of the SCOM managed instance.
  /// [managedGatewayName] The gateway resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ManagedGatewayArgs({
    required String instanceName,
    String? managedGatewayName,
    required String resourceGroupName,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      managedGatewayName = pulumi.Input.asOptionalInput<String>(managedGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'managedGatewayName': ?managedGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ManagedGatewayArgs(
      instanceName: map['instanceName'] as String,
      managedGatewayName: map['managedGatewayName'] == null ? null : map['managedGatewayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

