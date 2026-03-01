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
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? version,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetBotArgs.fromMap(Map<String, dynamic> map) {
    return GetBotArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

