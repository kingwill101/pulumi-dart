// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthbot_list_bot_secrets_args_doc}
/// Arguments for listBotSecrets.
/// {@endtemplate}
/// {@macro pulumi_healthbot_list_bot_secrets_args_doc}
class ListBotSecretsArgs {
  /// The name of the Bot resource.
  final pulumi.Input<String> botName;

  /// The name of the Bot resource group in the user subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListBotSecretsArgs].
  /// [botName] The name of the Bot resource.
  /// [resourceGroupName] The name of the Bot resource group in the user subscription.
  ListBotSecretsArgs({required this.botName, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListBotSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListBotSecretsArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
