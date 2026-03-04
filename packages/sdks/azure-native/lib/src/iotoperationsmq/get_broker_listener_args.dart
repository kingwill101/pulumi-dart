// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_broker_listener_args_doc}
/// Arguments for getBrokerListener.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_broker_listener_args_doc}
class GetBrokerListenerArgs {
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;

  /// Name of MQ broker/listener resource
  final pulumi.Input<String> listenerName;

  /// Name of MQ resource
  final pulumi.Input<String> mqName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerListenerArgs].
  /// [brokerName] Name of MQ broker resource
  /// [listenerName] Name of MQ broker/listener resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerListenerArgs({
    required this.brokerName,
    required this.listenerName,
    required this.mqName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': brokerName,
      'listenerName': listenerName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerListenerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerListenerArgs(
      brokerName: pulumi.Input.fromValue(map['brokerName'] as String),
      listenerName: pulumi.Input.fromValue(map['listenerName'] as String),
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
