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
  GetSmtpUsernameArgs({
    required pulumi.Output<String> communicationServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> smtpUsername,
  }) :
      communicationServiceName = pulumi.Input.asInput<String>(communicationServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      smtpUsername = pulumi.Input.asInput<String>(smtpUsername);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceName': communicationServiceName,
      'resourceGroupName': resourceGroupName,
      'smtpUsername': smtpUsername,
    };
  }

  factory GetSmtpUsernameArgs.fromMap(Map<String, dynamic> map) {
    return GetSmtpUsernameArgs(
      communicationServiceName: pulumi.Output.create<String>(map['communicationServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      smtpUsername: pulumi.Output.create<String>(map['smtpUsername'] as String),
    );
  }
}

