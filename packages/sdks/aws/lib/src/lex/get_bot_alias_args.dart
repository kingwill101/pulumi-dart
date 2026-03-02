// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lex_get_bot_alias_get_bot_alias_args_doc}
/// Arguments for getBotAlias.
/// {@endtemplate}
/// {@macro pulumi_lex_get_bot_alias_get_bot_alias_args_doc}
class GetBotAliasArgs {
  /// Name of the bot.
  final pulumi.Input<String> botName;
  /// Name of the bot alias. The name is case sensitive.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBotAliasArgs].
  /// [botName] Name of the bot.
  /// [name] Name of the bot alias. The name is case sensitive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBotAliasArgs({
    required this.botName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'name': name,
      'region': ?region,
    };
  }

  factory GetBotAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetBotAliasArgs(
      botName: (map['botName'] as String).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

