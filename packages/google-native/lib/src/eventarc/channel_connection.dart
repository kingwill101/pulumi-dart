import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_connection_args.dart';

/// Create a new ChannelConnection in a particular project and location.
class ChannelConnection extends pulumi.CustomResource {
  /// Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  late final pulumi.Output<String> activationToken;

  /// The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  late final pulumi.Output<String> channel;

  /// Required. The user-provided ID to be assigned to the channel connection.
  late final pulumi.Output<String> channelConnectionId;

  /// The creation time.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> location;

  /// The name of the connection.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Server assigned ID of the resource. The server guarantees uniqueness and immutability until deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ChannelConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelConnection]. {@macro pulumi_eventarc_v1_channel_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelConnection(
    String name, {
    ChannelConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:eventarc/v1:ChannelConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.activationToken = registerOutput<String>('activationToken');
    this.channel = registerOutput<String>('channel');
    this.channelConnectionId = registerOutput<String>('channelConnectionId');
    this.createTime = registerOutput<String>('createTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
