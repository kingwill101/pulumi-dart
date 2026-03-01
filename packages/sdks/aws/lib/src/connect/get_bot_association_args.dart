// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bot_association_lex_bot.dart';

/// {@template pulumi_connect_get_bot_association_get_bot_association_args_doc}
/// Arguments for getBotAssociation.
/// {@endtemplate}
/// {@macro pulumi_connect_get_bot_association_get_bot_association_args_doc}
class GetBotAssociationArgs {
  /// Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  final pulumi.Input<String> instanceId;
  /// Configuration information of an Amazon Lex (V1) bot. Detailed below.
  final pulumi.Input<GetBotAssociationLexBot> lexBot;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBotAssociationArgs].
  /// [instanceId] Identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the instance.
  /// [lexBot] Configuration information of an Amazon Lex (V1) bot. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBotAssociationArgs({
    required pulumi.Output<String> instanceId,
    required pulumi.Output<GetBotAssociationLexBot> lexBot,
    pulumi.Output<String>? region,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      lexBot = pulumi.Input.asInput<GetBotAssociationLexBot>(lexBot),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'lexBot': pulumi.Input.mapInputValue<GetBotAssociationLexBot, Map<String, dynamic>>(lexBot, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory GetBotAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBotAssociationArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      lexBot: pulumi.Output.create<GetBotAssociationLexBot>(GetBotAssociationLexBot.fromMap((map['lexBot'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

