// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_broker_args_doc}
/// Arguments for getBroker.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_broker_args_doc}
class GetBrokerArgs {
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBrokerArgs].
  /// [brokerName] Name of MQ broker resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBrokerArgs({
    required pulumi.Output<String> brokerName,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      brokerName = pulumi.Input.asInput<String>(brokerName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': brokerName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBrokerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerArgs(
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

