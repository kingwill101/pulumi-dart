// ignore_for_file: unused_element, unnecessary_cast

class BotAssociationLexBot {
  /// The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  final String? lexRegion;

  /// The name of the Amazon Lex (V1) bot.
  final String name;

  /// Creates a new [BotAssociationLexBot].
  /// [lexRegion] The Region that the Amazon Lex (V1) bot was created in. Defaults to current region.
  /// [name] The name of the Amazon Lex (V1) bot.
  BotAssociationLexBot({
    this.lexRegion,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lexRegionValue = lexRegion;
    if (lexRegionValue != null) {
      map['lexRegion'] = lexRegionValue;
    }
    map['name'] = name;
    return map;
  }

  factory BotAssociationLexBot.fromMap(Map<String, dynamic> map) {
    return BotAssociationLexBot(
      lexRegion: map['lexRegion'] == null ? null : map['lexRegion'] as String,
      name: map['name'] as String,
    );
  }
}
