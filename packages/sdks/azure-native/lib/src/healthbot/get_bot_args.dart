// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthbot_get_bot_args_doc}
/// Arguments for getBot.
/// {@endtemplate}
/// {@macro pulumi_healthbot_get_bot_args_doc}
class GetBotArgs {
  /// The name of the Bot resource.
  final pulumi.Input<String> botName;
  /// The name of the Bot resource group in the user subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBotArgs].
  /// [botName] The name of the Bot resource.
  /// [resourceGroupName] The name of the Bot resource group in the user subscription.
  const GetBotArgs({
    required this.botName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBotArgs.fromMap(Map<String, dynamic> map) {
    return GetBotArgs(
      botName: pulumi.Input.fromValue(map['botName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
