// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_association_lex_bot.dart';

/// {@template pulumi_connect_bot_association_bot_association_args_doc}
/// The set of arguments for BotAssociation.
/// {@endtemplate}
/// {@macro pulumi_connect_bot_association_bot_association_args_doc}
class BotAssociationArgs {
  /// The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String> instanceId;
  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  final pulumi.Input<BotAssociationLexBot> lexBot;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BotAssociationArgs].
  /// [instanceId] The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [lexBot] Configuration information of an Amazon Lex (V1) bot. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BotAssociationArgs({
    required this.instanceId,
    required this.lexBot,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'lexBot': pulumi.Input.mapInputValue<BotAssociationLexBot, Map<String, dynamic>>(lexBot, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory BotAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BotAssociationArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      lexBot: pulumi.Input.fromValue(BotAssociationLexBot.fromMap((map['lexBot']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

