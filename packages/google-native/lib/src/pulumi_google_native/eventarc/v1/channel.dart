import 'package:pulumi/pulumi.dart';
import 'channel_args.dart';

/// Create a new channel in a particular project and location.
class Channel extends CustomResource {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  late final Output<String> activationToken;

  /// Required. The user-provided ID to be assigned to the channel.
  late final Output<String> channelId;

  /// The creation time.
  late final Output<String> createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final Output<String> cryptoKeyName;
  late final Output<String> location;

  /// The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  late final Output<String> name;
  late final Output<String> project;

  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  late final Output<String> provider;

  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  late final Output<String> pubsubTopic;

  /// The state of a Channel.
  late final Output<String> state;

  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  Channel(
    String name, {
    ChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:eventarc/v1:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activationToken = Output.createUnknown<String>();
    this.channelId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.cryptoKeyName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.provider = Output.createUnknown<String>();
    this.pubsubTopic = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
