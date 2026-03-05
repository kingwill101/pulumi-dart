// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBotAssociationLexBot {
  /// Region that the Amazon Lex (V1) bot was created in.
  final pulumi.Input<String> lexRegion;
  /// Name of the Amazon Lex (V1) bot.
  final pulumi.Input<String> name;

  /// Creates a new [GetBotAssociationLexBot].
  /// [lexRegion] Region that the Amazon Lex (V1) bot was created in.
  /// [name] Name of the Amazon Lex (V1) bot.
  GetBotAssociationLexBot({
    required this.lexRegion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lexRegion': lexRegion,
      'name': name,
    };
  }

  factory GetBotAssociationLexBot.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationLexBot(
      lexRegion: pulumi.Input.fromValue(map['lexRegion'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

