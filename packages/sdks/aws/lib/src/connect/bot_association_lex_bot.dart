// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotAssociationLexBot {
  /// The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  final pulumi.Input<String>? lexRegion;
  /// The name of the Amazon Lex (V1) bot.
  final pulumi.Input<String> name;

  /// Creates a new [BotAssociationLexBot].
  /// [lexRegion] The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  /// [name] The name of the Amazon Lex (V1) bot.
  BotAssociationLexBot({
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
      lexRegion: map['lexRegion'] == null ? null : ((map['lexRegion'] as String).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

