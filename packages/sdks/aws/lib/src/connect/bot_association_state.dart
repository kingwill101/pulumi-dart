// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_association_lex_bot.dart';

/// Input properties used for looking up and filtering BotAssociation resources.
class BotAssociationState {
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String>? instanceId;
  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  final pulumi.Input<BotAssociationLexBot>? lexBot;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BotAssociationState].
  /// [instanceId] The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [lexBot] Configuration information of an Amazon Lex (V1) bot. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BotAssociationState({
    this.instanceId,
    this.lexBot,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'lexBot': ?pulumi.Input.mapOptionalInputValue<BotAssociationLexBot, Map<String, dynamic>>(lexBot, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory BotAssociationState.fromMap(Map<String, dynamic> map) {
    return BotAssociationState(
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      lexBot: map['lexBot'] == null ? null : ((BotAssociationLexBot.fromMap((map['lexBot']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

