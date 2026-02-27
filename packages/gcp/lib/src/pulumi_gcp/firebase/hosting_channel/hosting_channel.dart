import 'package:pulumi/pulumi.dart';
import 'hosting_channel_args.dart';

/// A `Channel` represents a stream of releases for a site. All sites have a default
/// `live` channel that serves content to the Firebase-provided subdomains and any
/// connected custom domains.
///
/// To get more information about Channel, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.channels)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Channel Basic
///
///
///
/// ### Firebasehosting Channel Full
///
///
///
///
/// ## Import
///
/// Channel can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/channels/{{channel_id}}`
///
/// * `{{site_id}}/{{channel_id}}`
///
/// When using the `pulumi import` command, Channel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default sites/{{site_id}}/channels/{{channel_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default {{site_id}}/{{channel_id}}
/// ```
class HostingChannel extends CustomResource {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  late final Output<String> channelId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the `ttl` field.
  late final Output<String> expireTime;

  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The fully-qualified resource name for the channel, in the format:
  /// sites/SITE_ID/channels/CHANNEL_ID
  late final Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  late final Output<int> retainedReleaseCount;

  /// Required. The ID of the site in which to create this channel.
  late final Output<String> siteId;

  /// Input only. A time-to-live for this channel. Sets `expire_time` to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  late final Output<String?> ttl;

  HostingChannel(
    String name, {
    HostingChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingChannel:HostingChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelId = registerOutput<String>('channelId');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retainedReleaseCount = registerOutput<int>('retainedReleaseCount');
    this.siteId = registerOutput<String>('siteId');
    this.ttl = registerOutput<String?>('ttl');
  }
}
