// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_mq_args_doc}
/// Arguments for getMq.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_mq_args_doc}
class GetMqArgs {
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMqArgs].
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetMqArgs({
    required this.mqName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMqArgs.fromMap(Map<String, dynamic> map) {
    return GetMqArgs(
      mqName: pulumi.Input.fromValue(map['mqName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

