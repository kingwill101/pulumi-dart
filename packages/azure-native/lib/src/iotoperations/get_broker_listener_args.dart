// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_broker_listener_args_doc}
/// Arguments for getBrokerListener.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_broker_listener_args_doc}
class GetBrokerListenerArgs {
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// Name of Instance broker listener resource
  final pulumi.Input<String> listenerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerListenerArgs].
  /// [brokerName] Name of broker.
  /// [instanceName] Name of instance.
  /// [listenerName] Name of Instance broker listener resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerListenerArgs({
    required String brokerName,
    required String instanceName,
    required String listenerName,
    required String resourceGroupName,
  }) :
      brokerName = pulumi.Input.asInput<String>(brokerName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      listenerName = pulumi.Input.asInput<String>(listenerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': brokerName,
      'instanceName': instanceName,
      'listenerName': listenerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerListenerArgs(
      brokerName: map['brokerName'] as String,
      instanceName: map['instanceName'] as String,
      listenerName: map['listenerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

