// ignore_for_file: unused_element, unnecessary_cast

import 'get_bot_association_lex_bot.dart';

/// Result data returned by getBotAssociation.
class GetBotAssociationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final GetBotAssociationLexBot? lexBot;
  final String? region;

  /// Creates a new [GetBotAssociationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [lexBot] Optional.
  /// [region] Optional.
  const GetBotAssociationResult({
    this.id,
    this.instanceId,
    this.lexBot,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'instanceId': ?instanceId,
      'lexBot': ?lexBot?.toMap(),
      'region': ?region,
    };
  }

  factory GetBotAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lexBot: (() { final guardedValue = map['lexBot']; if (guardedValue == null) return null; return GetBotAssociationLexBot.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
