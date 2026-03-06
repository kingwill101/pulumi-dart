// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_smtp_username_args_doc}
/// The set of arguments for SmtpUsername.
/// {@endtemplate}
/// {@macro pulumi_communication_smtp_username_args_doc}
class SmtpUsernameArgs {
  /// The name of the CommunicationService resource.
  final pulumi.Input<String> communicationServiceName;
  /// The application Id for the linked Entra Application.
  final pulumi.Input<String> entraApplicationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the SmtpUsernameResource.
  final pulumi.Input<String>? smtpUsername;
  /// The tenant of the linked Entra Application.
  final pulumi.Input<String> tenantId;
  /// The SMTP username. Could be free form or in the email address format.
  final pulumi.Input<String> username;

  /// Creates a new [SmtpUsernameArgs].
  /// [communicationServiceName] The name of the CommunicationService resource.
  /// [entraApplicationId] The application Id for the linked Entra Application.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [smtpUsername] The name of the SmtpUsernameResource.
  /// [tenantId] The tenant of the linked Entra Application.
  /// [username] The SMTP username. Could be free form or in the email address format.
  const SmtpUsernameArgs({
    required this.communicationServiceName,
    required this.entraApplicationId,
    required this.resourceGroupName,
    this.smtpUsername,
    required this.tenantId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': communicationServiceName,
      'entraApplicationId': entraApplicationId,
      'resourceGroupName': resourceGroupName,
      'smtpUsername': ?smtpUsername,
      'tenantId': tenantId,
      'username': username,
    };
  }

  factory SmtpUsernameArgs.fromMap(Map<String, dynamic> map) {
    return SmtpUsernameArgs(
      communicationServiceName: pulumi.Input.fromValue(map['communicationServiceName'] as String),
      entraApplicationId: pulumi.Input.fromValue(map['entraApplicationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      smtpUsername: (() { final guardedValue = map['smtpUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

