// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bot_channel_alexa_channel_alexa_args_doc}
/// The set of arguments for ChannelAlexa.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_alexa_channel_alexa_args_doc}
class ChannelAlexaArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Alexa skill ID for the Alexa Channel.
  final pulumi.Input<String> skillId;

  /// Creates a new [ChannelAlexaArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [location] The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the Alexa Channel should be created. Changing this forces a new resource to be created.
  /// [skillId] The Alexa skill ID for the Alexa Channel.
  ChannelAlexaArgs({
    required String botName,
    String? location,
    required String resourceGroupName,
    required String skillId,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skillId = pulumi.Input.asInput<String>(skillId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'skillId': skillId,
    };
  }

  factory ChannelAlexaArgs.fromMap(Map<String, dynamic> map) {
    return ChannelAlexaArgs(
      botName: map['botName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skillId: map['skillId'] as String,
    );
  }
}

