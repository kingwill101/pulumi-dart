import 'package:pulumi/pulumi.dart';
import 'channel_group_args.dart';

/// Creates an AWS Elemental MediaPackage Version 2 Channel Group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Elemental MediaPackage Version 2 Channel Group using the channel group's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:mediapackagev2/channelGroup:ChannelGroup example example
/// ```
class ChannelGroup extends CustomResource {
  /// The ARN of the channel
  late final Output<String> arn;

  /// A description of the channel group
  late final Output<String?> description;

  /// The egress domain of the channel group
  late final Output<String> egressDomain;

  /// A unique identifier naming the channel group
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ChannelGroup(
    String name, {
    ChannelGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mediapackagev2/channelGroup:ChannelGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.egressDomain = registerOutput<String>('egressDomain');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
