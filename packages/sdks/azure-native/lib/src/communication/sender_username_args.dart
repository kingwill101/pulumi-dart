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
  const SenderUsernameArgs({
    this.displayName,
    required this.domainName,
    required this.emailServiceName,
    required this.resourceGroupName,
    this.senderUsername,
    required this.username,
  });

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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      senderUsername: (() { final guardedValue = map['senderUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

