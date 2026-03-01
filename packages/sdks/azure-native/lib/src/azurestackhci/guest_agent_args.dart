// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_credential.dart';

/// {@template pulumi_azurestackhci_guest_agent_args_doc}
/// The set of arguments for GuestAgent.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_guest_agent_args_doc}
class GuestAgentArgs {
  /// Username / Password Credentials to provision guest agent.
  final pulumi.Input<GuestCredential>? credentials;
  /// The guest agent provisioning action.
  final pulumi.Input<String>? provisioningAction;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GuestAgentArgs].
  /// [credentials] Username / Password Credentials to provision guest agent.
  /// [provisioningAction] The guest agent provisioning action.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GuestAgentArgs({
    pulumi.Output<GuestCredential>? credentials,
    pulumi.Output<String>? provisioningAction,
    required pulumi.Output<String> resourceUri,
  }) :
      credentials = pulumi.Input.asOptionalInput<GuestCredential>(credentials),
      provisioningAction = pulumi.Input.asOptionalInput<String>(provisioningAction),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentials': ?pulumi.Input.mapOptionalInputValue<GuestCredential, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'provisioningAction': ?provisioningAction,
      'resourceUri': resourceUri,
    };
  }

  factory GuestAgentArgs.fromMap(Map<String, dynamic> map) {
    return GuestAgentArgs(
      credentials: map['credentials'] == null ? null : pulumi.Output.create<GuestCredential>(GuestCredential.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      provisioningAction: map['provisioningAction'] == null ? null : pulumi.Output.create<String>(map['provisioningAction'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

