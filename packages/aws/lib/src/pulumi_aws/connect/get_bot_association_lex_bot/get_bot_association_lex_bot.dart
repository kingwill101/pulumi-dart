// ignore_for_file: unused_element, unnecessary_cast

class GetBotAssociationLexBot {
  /// Region that the Amazon Lex (V1) bot was created in.
  final String lexRegion;

  /// Name of the Amazon Lex (V1) bot.
  final String name;

  GetBotAssociationLexBot({
    required this.lexRegion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lexRegion'] = lexRegion;
    map['name'] = name;
    return map;
  }

  factory GetBotAssociationLexBot.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationLexBot(
      lexRegion: map['lexRegion'] as String,
      name: map['name'] as String,
    );
  }
}
