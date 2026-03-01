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
    required pulumi.Output<String> authorizationName,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asInput<String>(authorizationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authorizationName: pulumi.Output.create<String>(map['authorizationName'] as String),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

