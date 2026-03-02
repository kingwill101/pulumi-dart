// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ec2_flow_log_args_doc}
/// Arguments for getEc2FlowLog.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ec2_flow_log_args_doc}
class GetEc2FlowLogArgs {
  /// Name of Ec2FlowLog
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEc2FlowLogArgs].
  /// [name] Name of Ec2FlowLog
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEc2FlowLogArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEc2FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return GetEc2FlowLogArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

