// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_cloud_identity_info_response.dart';

/// Result data returned by getChannelPartnerLink.
class GetChannelPartnerLinkResult {
  /// Cloud Identity info of the channel partner (IR).
  final GoogleCloudChannelV1CloudIdentityInfoResponse channelPartnerCloudIdentityInfo;
  /// Timestamp of when the channel partner link is created.
  final String createTime;
  /// URI of the web page where partner accepts the link invitation.
  final String inviteLinkUri;
  /// State of the channel partner link.
  final String linkState;
  /// Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.
  final String name;
  /// Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.
  final String publicId;
  /// Cloud Identity ID of the linked reseller.
  final String resellerCloudIdentityId;
  /// Timestamp of when the channel partner link is updated.
  final String updateTime;

  /// Creates a new [GetChannelPartnerLinkResult].
  /// [channelPartnerCloudIdentityInfo] Cloud Identity info of the channel partner (IR).
  /// [createTime] Timestamp of when the channel partner link is created.
  /// [inviteLinkUri] URI of the web page where partner accepts the link invitation.
  /// [linkState] State of the channel partner link.
  /// [name] Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.
  /// [publicId] Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.
  /// [resellerCloudIdentityId] Cloud Identity ID of the linked reseller.
  /// [updateTime] Timestamp of when the channel partner link is updated.
  GetChannelPartnerLinkResult({
    required this.channelPartnerCloudIdentityInfo,
    required this.createTime,
    required this.inviteLinkUri,
    required this.linkState,
    required this.name,
    required this.publicId,
    required this.resellerCloudIdentityId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelPartnerCloudIdentityInfo': channelPartnerCloudIdentityInfo.toMap(),
      'createTime': createTime,
      'inviteLinkUri': inviteLinkUri,
      'linkState': linkState,
      'name': name,
      'publicId': publicId,
      'resellerCloudIdentityId': resellerCloudIdentityId,
      'updateTime': updateTime,
    };
  }

  factory GetChannelPartnerLinkResult.fromMap(Map<String, dynamic> map) {
    return GetChannelPartnerLinkResult(
      channelPartnerCloudIdentityInfo: GoogleCloudChannelV1CloudIdentityInfoResponse.fromMap((map['channelPartnerCloudIdentityInfo'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      inviteLinkUri: map['inviteLinkUri'] as String,
      linkState: map['linkState'] as String,
      name: map['name'] as String,
      publicId: map['publicId'] as String,
      resellerCloudIdentityId: map['resellerCloudIdentityId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

