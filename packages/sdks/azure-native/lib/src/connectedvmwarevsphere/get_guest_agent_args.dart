// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_guest_agent_args_doc}
/// Arguments for getGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_guest_agent_args_doc}
class GetGuestAgentArgs {
  /// Name of the GuestAgent.
  final pulumi.Input<String> name;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vm.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetGuestAgentArgs].
  /// [name] Name of the GuestAgent.
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineName] Name of the vm.
  GetGuestAgentArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestAgentArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

