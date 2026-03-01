// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_broker_authentication_args_doc}
/// Arguments for getBrokerAuthentication.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_broker_authentication_args_doc}
class GetBrokerAuthenticationArgs {
  /// Name of Instance broker authentication resource
  final pulumi.Input<String> authenticationName;
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerAuthenticationArgs].
  /// [authenticationName] Name of Instance broker authentication resource
  /// [brokerName] Name of broker.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerAuthenticationArgs({
    required pulumi.Output<String> authenticationName,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authenticationName = pulumi.Input.asInput<String>(authenticationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': authenticationName,
      'brokerName': brokerName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthenticationArgs(
      authenticationName: pulumi.Output.create<String>(map['authenticationName'] as String),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

