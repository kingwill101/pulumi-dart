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
  GetMqArgs({
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMqArgs.fromMap(Map<String, dynamic> map) {
    return GetMqArgs(
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

