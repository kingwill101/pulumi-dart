// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_smtp_username_args_doc}
/// Arguments for getSmtpUsername.
/// {@endtemplate}
/// {@macro pulumi_communication_get_smtp_username_args_doc}
class GetSmtpUsernameArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String> communicationServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SmtpUsernameResource.
  final pulumi.Input<String> smtpUsername;

  /// Creates a new [GetSmtpUsernameArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [smtpUsername] The name of the SmtpUsernameResource.
  const GetSmtpUsernameArgs({
    required this.communicationServiceName,
    required this.resourceGroupName,
    required this.smtpUsername,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': communicationServiceName,
      'resourceGroupName': resourceGroupName,
      'smtpUsername': smtpUsername,
    };
  }

  factory GetSmtpUsernameArgs.fromMap(Map<String, dynamic> map) {
    return GetSmtpUsernameArgs(
      communicationServiceName: pulumi.Input.fromValue(map['communicationServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      smtpUsername: pulumi.Input.fromValue(map['smtpUsername'] as String),
    );
  }
}
