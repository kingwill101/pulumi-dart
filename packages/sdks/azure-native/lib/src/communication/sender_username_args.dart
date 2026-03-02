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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      domainName: (map['domainName'] as String).input(),
      emailServiceName: (map['emailServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      senderUsername: map['senderUsername'] == null ? null : (map['senderUsername']! as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

