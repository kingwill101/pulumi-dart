// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBotAlias.
class GetBotAliasArgs {
  /// Name of the bot.
  final Input<String> botName;

  /// Name of the bot alias. The name is case sensitive.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBotAliasArgs({
    required this.botName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['botName'] = botName;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBotAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetBotAliasArgs(
      botName: Input.asInput<String>(map['botName']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
