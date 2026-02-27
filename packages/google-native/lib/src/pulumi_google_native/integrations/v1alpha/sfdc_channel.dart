import 'package:pulumi/pulumi.dart' hide Config;
import 'sfdc_channel_args.dart';

/// Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.
/// Auto-naming is currently not supported for this resource.
class SfdcChannel extends CustomResource {
  /// The Channel topic defined by salesforce once an channel is opened
  late final Output<String> channelTopic;

  /// Time when the channel is created
  late final Output<String> createTime;

  /// Time when the channel was deleted. Empty if not deleted.
  late final Output<String> deleteTime;

  /// The description for this channel
  late final Output<String> description;

  /// Client level unique name/alias to easily reference a channel.
  late final Output<String> displayName;

  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  late final Output<bool> isActive;

  /// Last sfdc messsage replay id for channel
  late final Output<String> lastReplayId;
  late final Output<String> location;

  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  late final Output<String> name;
  late final Output<String> productId;
  late final Output<String> project;
  late final Output<String> sfdcInstanceId;

  /// Time when the channel was last updated
  late final Output<String> updateTime;

  SfdcChannel(
    String name, {
    SfdcChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:SfdcChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelTopic = registerOutput<String>('channelTopic');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.isActive = registerOutput<bool>('isActive');
    this.lastReplayId = registerOutput<String>('lastReplayId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.sfdcInstanceId = registerOutput<String>('sfdcInstanceId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
