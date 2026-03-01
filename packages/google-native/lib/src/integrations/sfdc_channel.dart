import 'package:pulumi/pulumi.dart' as pulumi;
import 'sfdc_channel_args.dart';

/// Creates an sfdc channel record. Store the sfdc channel in Spanner. Returns the sfdc channel.
/// Auto-naming is currently not supported for this resource.
class SfdcChannel extends pulumi.CustomResource {
  /// The Channel topic defined by salesforce once an channel is opened
  late final pulumi.Output<String> channelTopic;

  /// Time when the channel is created
  late final pulumi.Output<String> createTime;

  /// Time when the channel was deleted. Empty if not deleted.
  late final pulumi.Output<String> deleteTime;

  /// The description for this channel
  late final pulumi.Output<String> description;

  /// Client level unique name/alias to easily reference a channel.
  late final pulumi.Output<String> displayName;

  /// Indicated if a channel has any active integrations referencing it. Set to false when the channel is created, and set to true if there is any integration published with the channel configured in it.
  late final pulumi.Output<bool> isActive;

  /// Last sfdc messsage replay id for channel
  late final pulumi.Output<String> lastReplayId;
  late final pulumi.Output<String> location;

  /// Resource name of the SFDC channel projects/{project}/locations/{location}/sfdcInstances/{sfdc_instance}/sfdcChannels/{sfdc_channel}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> productId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> sfdcInstanceId;

  /// Time when the channel was last updated
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SfdcChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SfdcChannel]. {@macro pulumi_integrations_v1alpha_sfdc_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SfdcChannel(
    String name, {
    SfdcChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:integrations/v1alpha:SfdcChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
