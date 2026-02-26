// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bot_association_lex_bot/get_bot_association_lex_bot.dart';

/// Arguments for getBotAssociation.
class GetBotAssociationArgs {
  /// Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final Input<String> instanceId;

  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  final Input<GetBotAssociationLexBot> lexBot;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBotAssociationArgs({
    required this.instanceId,
    required this.lexBot,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['lexBot'] =
        Input.mapInputValue<GetBotAssociationLexBot, Map<String, dynamic>>(
            lexBot, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBotAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      lexBot: Input.asInput<GetBotAssociationLexBot>(map['lexBot']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
