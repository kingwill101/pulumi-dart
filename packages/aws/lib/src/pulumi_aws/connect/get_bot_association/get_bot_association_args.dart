// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_bot_association_lex_bot/get_bot_association_lex_bot.dart';

/// Arguments for getBotAssociation.
class GetBotAssociationArgs {
  /// Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String> instanceId;

  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  final pulumi.Input<GetBotAssociationLexBot> lexBot;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetBotAssociationArgs({
    required this.instanceId,
    required this.lexBot,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['lexBot'] = pulumi.Input.mapInputValue<GetBotAssociationLexBot,
        Map<String, dynamic>>(lexBot, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBotAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      lexBot: pulumi.Input.asInput<GetBotAssociationLexBot>(map['lexBot']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
