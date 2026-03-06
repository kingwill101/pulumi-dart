// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_broker_authentication_args_doc}
/// Arguments for getBrokerAuthentication.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_broker_authentication_args_doc}
class GetBrokerAuthenticationArgs {
  /// Name of MQ broker/authentication resource
  final pulumi.Input<String> authenticationName;
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerAuthenticationArgs].
  /// [authenticationName] Name of MQ broker/authentication resource
  /// [brokerName] Name of MQ broker resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBrokerAuthenticationArgs({
    required this.authenticationName,
    required this.brokerName,
    required this.mqName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': authenticationName,
      'brokerName': brokerName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthenticationArgs(
      authenticationName: pulumi.Input.fromValue(map['authenticationName'] as String),
      brokerName: pulumi.Input.fromValue(map['brokerName'] as String),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

