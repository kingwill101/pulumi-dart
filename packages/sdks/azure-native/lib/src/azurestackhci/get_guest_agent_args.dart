// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_guest_agent_args_doc}
/// Arguments for getGuestAgent.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_guest_agent_args_doc}
class GetGuestAgentArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetGuestAgentArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const GetGuestAgentArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetGuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestAgentArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
