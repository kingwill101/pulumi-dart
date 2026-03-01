// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_facebook_page.dart';

/// {@template pulumi_bot_channel_facebook_channel_facebook_args_doc}
/// The set of arguments for ChannelFacebook.
/// {@endtemplate}
/// {@macro pulumi_bot_channel_facebook_channel_facebook_args_doc}
class ChannelFacebookArgs {
  /// The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> botName;
  /// The Facebook Application ID for the Facebook Channel.
  final pulumi.Input<String> facebookApplicationId;
  /// The Facebook Application Secret for the Facebook Channel.
  final pulumi.Input<String> facebookApplicationSecret;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// One or more `page` blocks as defined below.
  final pulumi.Input<List<ChannelFacebookPage>> pages;
  /// The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelFacebookArgs].
  /// [botName] The name of the Bot Resource this channel will be associated with. Changing this forces a new resource to be created.
  /// [facebookApplicationId] The Facebook Application ID for the Facebook Channel.
  /// [facebookApplicationSecret] The Facebook Application Secret for the Facebook Channel.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [pages] One or more `page` blocks as defined below.
  /// [resourceGroupName] The name of the resource group where the Facebook Channel should be created. Changing this forces a new resource to be created.
  ChannelFacebookArgs({
    required String botName,
    required String facebookApplicationId,
    required String facebookApplicationSecret,
    String? location,
    required List<ChannelFacebookPage> pages,
    required String resourceGroupName,
  }) :
      botName = pulumi.Input.asInput<String>(botName),
      facebookApplicationId = pulumi.Input.asInput<String>(facebookApplicationId),
      facebookApplicationSecret = pulumi.Input.asInput<String>(facebookApplicationSecret),
      location = pulumi.Input.asOptionalInput<String>(location),
      pages = pulumi.Input.asInput<List<ChannelFacebookPage>>(pages),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'botName': botName,
      'facebookApplicationId': facebookApplicationId,
      'facebookApplicationSecret': facebookApplicationSecret,
      'location': ?location,
      'pages': pulumi.Input.mapInputValue<List<ChannelFacebookPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<ChannelFacebookPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelFacebookArgs.fromMap(Map<String, dynamic> map) {
    return ChannelFacebookArgs(
      botName: map['botName'] as String,
      facebookApplicationId: map['facebookApplicationId'] as String,
      facebookApplicationSecret: map['facebookApplicationSecret'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      pages: pulumi.Input.decodeList<ChannelFacebookPage>(map['pages'], (value) => ChannelFacebookPage.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

