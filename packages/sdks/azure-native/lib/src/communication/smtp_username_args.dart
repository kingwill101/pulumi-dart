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
  SmtpUsernameArgs({
    required pulumi.Output<String> communicationServiceName,
    required pulumi.Output<String> entraApplicationId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? smtpUsername,
    required pulumi.Output<String> tenantId,
    required pulumi.Output<String> username,
  }) :
      communicationServiceName = pulumi.Input.asInput<String>(communicationServiceName),
      entraApplicationId = pulumi.Input.asInput<String>(entraApplicationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      smtpUsername = pulumi.Input.asOptionalInput<String>(smtpUsername),
      tenantId = pulumi.Input.asInput<String>(tenantId),
      username = pulumi.Input.asInput<String>(username);

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
      communicationServiceName: pulumi.Output.create<String>(map['communicationServiceName'] as String),
      entraApplicationId: pulumi.Output.create<String>(map['entraApplicationId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      smtpUsername: map['smtpUsername'] == null ? null : pulumi.Output.create<String>(map['smtpUsername'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

