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
    pulumi.Output<String>? instanceId,
    pulumi.Output<BotAssociationLexBot>? lexBot,
    pulumi.Output<String>? region,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      lexBot = pulumi.Input.asOptionalInput<BotAssociationLexBot>(lexBot),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'lexBot': ?pulumi.Input.mapOptionalInputValue<BotAssociationLexBot, Map<String, dynamic>>(lexBot, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory BotAssociationState.fromMap(Map<String, dynamic> map) {
    return BotAssociationState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      lexBot: map['lexBot'] == null ? null : pulumi.Output.create<BotAssociationLexBot>(BotAssociationLexBot.fromMap((map['lexBot'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

