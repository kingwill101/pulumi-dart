import 'package:pulumi/pulumi.dart' hide Config;
import 'channel_partner_link_args.dart';
import 'google_cloud_channel_v1_cloud_identity_info_response.dart';

/// Initiates a channel partner link between a distributor and a reseller, or between resellers in an n-tier reseller channel. Invited partners need to follow the invite_link_uri provided in the response to accept. After accepting the invitation, a link is set up between the two parties. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * ALREADY_EXISTS: The ChannelPartnerLink sent in the request already exists. * NOT_FOUND: No Cloud Identity customer exists for provided domain. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The new ChannelPartnerLink resource.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ChannelPartnerLink extends CustomResource {
  late final Output<String> accountId;

  /// Cloud Identity info of the channel partner (IR).
  late final Output<GoogleCloudChannelV1CloudIdentityInfoResponse>
      channelPartnerCloudIdentityInfo;

  /// Timestamp of when the channel partner link is created.
  late final Output<String> createTime;

  /// URI of the web page where partner accepts the link invitation.
  late final Output<String> inviteLinkUri;

  /// State of the channel partner link.
  late final Output<String> linkState;

  /// Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.
  late final Output<String> name;

  /// Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.
  late final Output<String> publicId;

  /// Cloud Identity ID of the linked reseller.
  late final Output<String> resellerCloudIdentityId;

  /// Timestamp of when the channel partner link is updated.
  late final Output<String> updateTime;

  ChannelPartnerLink(
    String name, {
    ChannelPartnerLinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudchannel/v1:ChannelPartnerLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.channelPartnerCloudIdentityInfo =
        registerOutput<GoogleCloudChannelV1CloudIdentityInfoResponse>(
            'channelPartnerCloudIdentityInfo');
    this.createTime = registerOutput<String>('createTime');
    this.inviteLinkUri = registerOutput<String>('inviteLinkUri');
    this.linkState = registerOutput<String>('linkState');
    this.name = registerOutput<String>('name');
    this.publicId = registerOutput<String>('publicId');
    this.resellerCloudIdentityId =
        registerOutput<String>('resellerCloudIdentityId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
