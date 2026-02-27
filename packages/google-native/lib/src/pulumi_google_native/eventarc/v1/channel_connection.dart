import 'package:pulumi/pulumi.dart' hide Config;
import 'channel_connection_args.dart';

/// Create a new ChannelConnection in a particular project and location.
class ChannelConnection extends CustomResource {
  /// Input only. Activation token for the channel. The token will be used during the creation of ChannelConnection to bind the channel with the provider project. This field will not be stored in the provider resource.
  late final Output<String> activationToken;

  /// The name of the connected subscriber Channel. This is a weak reference to avoid cross project and cross accounts references. This must be in `projects/{project}/location/{location}/channels/{channel_id}` format.
  late final Output<String> channel;

  /// Required. The user-provided ID to be assigned to the channel connection.
  late final Output<String> channelConnectionId;

  /// The creation time.
  late final Output<String> createTime;
  late final Output<String> location;

  /// The name of the connection.
  late final Output<String> name;
  late final Output<String> project;

  /// Server assigned ID of the resource. The server guarantees uniqueness and immutability until deleted.
  late final Output<String> uid;

  /// The last-modified time.
  late final Output<String> updateTime;

  ChannelConnection(
    String name, {
    ChannelConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:eventarc/v1:ChannelConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
