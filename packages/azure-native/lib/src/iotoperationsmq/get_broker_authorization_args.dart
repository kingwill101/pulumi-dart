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
  GetBrokerAuthorizationArgs({
    required String authorizationName,
    required String brokerName,
    required String mqName,
    required String resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asInput<String>(authorizationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authorizationName: map['authorizationName'] as String,
      brokerName: map['brokerName'] as String,
      mqName: map['mqName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

