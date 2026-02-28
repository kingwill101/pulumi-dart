import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';

/// Create a new channel in a particular project and location.
class Channel extends pulumi.CustomResource {
  /// The activation token for the channel. The token must be used by the provider to register the channel for publishing.
  late final pulumi.Output<String> activationToken;

  /// Required. The user-provided ID to be assigned to the channel.
  late final pulumi.Output<String> channelId;

  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String> cryptoKeyName;
  late final pulumi.Output<String> location;

  /// The resource name of the channel. Must be unique within the location on the project and must be in `projects/{project}/locations/{location}/channels/{channel_id}` format.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This provider will be granted permissions to publish events to the channel. Format: `projects/{project}/locations/{location}/providers/{provider_id}`.
  late final pulumi.Output<String> provider;

  /// The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{project}/topics/{topic_id}`.
  late final pulumi.Output<String> pubsubTopic;

  /// The state of a Channel.
  late final pulumi.Output<String> state;

  /// Server assigned unique identifier for the channel. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_eventarc_v1_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:eventarc/v1:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationToken = registerOutput<String>('activationToken');
    this.channelId = registerOutput<String>('channelId');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyName = registerOutput<String>('cryptoKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.provider = registerOutput<String>('provider');
    this.pubsubTopic = registerOutput<String>('pubsubTopic');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
