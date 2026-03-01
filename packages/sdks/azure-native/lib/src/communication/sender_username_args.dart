// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_sender_username_args_doc}
/// The set of arguments for SenderUsername.
/// {@endtemplate}
/// {@macro pulumi_communication_sender_username_args_doc}
class SenderUsernameArgs {
  /// The display name for the senderUsername.
  final pulumi.Input<String>? displayName;
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The valid sender Username.
  final pulumi.Input<String>? senderUsername;
  /// A sender senderUsername to be used when sending emails.
  final pulumi.Input<String> username;

  /// Creates a new [SenderUsernameArgs].
  /// [displayName] The display name for the senderUsername.
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [senderUsername] The valid sender Username.
  /// [username] A sender senderUsername to be used when sending emails.
  SenderUsernameArgs({
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> domainName,
    required pulumi.Output<String> emailServiceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? senderUsername,
    required pulumi.Output<String> username,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domainName = pulumi.Input.asInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      senderUsername = pulumi.Input.asOptionalInput<String>(senderUsername),
      username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
      'senderUsername': ?senderUsername,
      'username': username,
    };
  }

  factory SenderUsernameArgs.fromMap(Map<String, dynamic> map) {
    return SenderUsernameArgs(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      emailServiceName: pulumi.Output.create<String>(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      senderUsername: map['senderUsername'] == null ? null : pulumi.Output.create<String>(map['senderUsername'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

