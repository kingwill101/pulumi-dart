// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_broker_authorization_args_doc}
/// Arguments for getBrokerAuthorization.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_broker_authorization_args_doc}
class GetBrokerAuthorizationArgs {
  /// Name of Instance broker authorization resource
  final pulumi.Input<String> authorizationName;
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerAuthorizationArgs].
  /// [authorizationName] Name of Instance broker authorization resource
  /// [brokerName] Name of broker.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerAuthorizationArgs({
    required this.authorizationName,
    required this.brokerName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': authorizationName,
      'brokerName': brokerName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerAuthorizationArgs(
      authorizationName: (map['authorizationName'] as String).input(),
      brokerName: (map['brokerName'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

