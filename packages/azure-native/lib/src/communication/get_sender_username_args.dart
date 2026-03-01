// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_sender_username_args_doc}
/// Arguments for getSenderUsername.
/// {@endtemplate}
/// {@macro pulumi_communication_get_sender_username_args_doc}
class GetSenderUsernameArgs {
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The valid sender Username.
  final pulumi.Input<String> senderUsername;

  /// Creates a new [GetSenderUsernameArgs].
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [senderUsername] The valid sender Username.
  GetSenderUsernameArgs({
    required String domainName,
    required String emailServiceName,
    required String resourceGroupName,
    required String senderUsername,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      senderUsername = pulumi.Input.asInput<String>(senderUsername);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
      'senderUsername': senderUsername,
    };
  }

  factory GetSenderUsernameArgs.fromMap(Map<String, dynamic> map) {
    return GetSenderUsernameArgs(
      domainName: map['domainName'] as String,
      emailServiceName: map['emailServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      senderUsername: map['senderUsername'] as String,
    );
  }
}

