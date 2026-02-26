// ignore_for_file: unused_element, unnecessary_cast

import '../get_bot_association_lex_bot/get_bot_association_lex_bot.dart';

/// Result data returned by getBotAssociation.
class GetBotAssociationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final GetBotAssociationLexBot lexBot;
  final String region;

  GetBotAssociationResult({
    required this.id,
    required this.instanceId,
    required this.lexBot,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['lexBot'] = lexBot.toMap();
    map['region'] = region;
    return map;
  }

  factory GetBotAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationResult(
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      lexBot: GetBotAssociationLexBot.fromMap(
          (map['lexBot'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
    );
  }
}
