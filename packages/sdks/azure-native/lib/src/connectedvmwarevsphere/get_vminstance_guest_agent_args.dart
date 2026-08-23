// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_vminstance_guest_agent_args_doc}
/// Arguments for getVMInstanceGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_vminstance_guest_agent_args_doc}
class GetVMInstanceGuestAgentArgs {
  /// The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetVMInstanceGuestAgentArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the Hybrid Compute machine resource to be extended.
  const GetVMInstanceGuestAgentArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetVMInstanceGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetVMInstanceGuestAgentArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
