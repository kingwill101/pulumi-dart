// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_broker_authorization_args_doc}
/// Arguments for getBrokerAuthorization.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_broker_authorization_args_doc}
class GetBrokerAuthorizationArgs {
  /// Name of MQ broker/authorization resource
  final pulumi.Input<String> authorizationName;
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerAuthorizationArgs].
  /// [authorizationName] Name of MQ broker/authorization resource
  /// [brokerName] Name of MQ broker resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBrokerAuthorizationArgs({
    required this.authorizationName,
    required this.brokerName,
    required this.mqName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'brokerName': brokerName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthorizationArgs(
      authorizationName: pulumi.Input.fromValue(map['authorizationName'] as String),
      brokerName: pulumi.Input.fromValue(map['brokerName'] as String),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

