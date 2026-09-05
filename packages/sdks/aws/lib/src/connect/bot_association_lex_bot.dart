// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotAssociationLexBot {
  /// The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  final pulumi.Input<String?>? lexRegion;
  /// The name of the Amazon Lex (V1) bot.
  final pulumi.Input<String> name;

  /// Creates a new [BotAssociationLexBot].
  /// [lexRegion] The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  /// [name] The name of the Amazon Lex (V1) bot.
  const BotAssociationLexBot({
    this.lexRegion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lexRegion': ?lexRegion,
      'name': name,
    };
  }

  factory BotAssociationLexBot.fromMap(Map<String, dynamic> map) {
    return BotAssociationLexBot(
      lexRegion: (() { final guardedValue = map['lexRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
