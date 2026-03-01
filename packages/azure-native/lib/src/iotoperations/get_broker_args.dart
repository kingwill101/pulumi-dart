// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_broker_args_doc}
/// Arguments for getBroker.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_broker_args_doc}
class GetBrokerArgs {
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerArgs].
  /// [brokerName] Name of broker.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerArgs({
    required String brokerName,
    required String instanceName,
    required String resourceGroupName,
  }) :
      brokerName = pulumi.Input.asInput<String>(brokerName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': brokerName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerArgs(
      brokerName: map['brokerName'] as String,
      instanceName: map['instanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

