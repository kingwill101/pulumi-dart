// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lex_get_bot_get_bot_args_doc}
/// Arguments for getBot.
/// {@endtemplate}
/// {@macro pulumi_lex_get_bot_get_bot_args_doc}
class GetBotArgs {
  /// Name of the bot. The name is case sensitive.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version or alias of the bot.
  final pulumi.Input<String>? version;

  /// Creates a new [GetBotArgs].
  /// [name] Name of the bot. The name is case sensitive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version or alias of the bot.
  GetBotArgs({
    required String name,
    String? region,
    String? version,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetBotArgs.fromMap(Map<String, dynamic> map) {
    return GetBotArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
