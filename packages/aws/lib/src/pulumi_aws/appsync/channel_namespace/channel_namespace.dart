import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_namespace_handler_configs/channel_namespace_handler_configs.dart';
import '../channel_namespace_publish_auth_mode/channel_namespace_publish_auth_mode.dart';
import '../channel_namespace_subscribe_auth_mode/channel_namespace_subscribe_auth_mode.dart';
import 'channel_namespace_args.dart';

/// Manages an [AWS AppSync Channel Namespace](https://docs.aws.amazon.com/appsync/latest/eventapi/event-api-concepts.html#namespace).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Channel Namespace using the `api_id` and `name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:appsync/channelNamespace:ChannelNamespace example example-api-id,example-channel-namespace
/// ```
class ChannelNamespace extends pulumi.CustomResource {
  /// Event API ID.
  late final pulumi.Output<String> apiId;

  /// ARN of the channel namespace.
  late final pulumi.Output<String> channelNamespaceArn;

  /// Event handler functions that run custom business logic to process published events and subscribe requests.
  late final pulumi.Output<String?> codeHandlers;

  /// Configuration for the `on_publish` and `on_subscribe` handlers. See Handler Configs below.
  late final pulumi.Output<ChannelNamespaceHandlerConfigs?> handlerConfigs;

  /// Name of the channel namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  late final pulumi.Output<List<ChannelNamespacePublishAuthMode>?>
      publishAuthModes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See Auth Modes below.
  late final pulumi.Output<List<ChannelNamespaceSubscribeAuthMode>?>
      subscribeAuthModes;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ChannelNamespace(
    String name, {
    ChannelNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/channelNamespace:ChannelNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.channelNamespaceArn = registerOutput<String>('channelNamespaceArn');
    this.codeHandlers = registerOutput<String?>('codeHandlers');
    this.handlerConfigs =
        registerOutput<ChannelNamespaceHandlerConfigs?>('handlerConfigs');
    this.name = registerOutput<String>('name');
    this.publishAuthModes =
        registerOutput<List<ChannelNamespacePublishAuthMode>?>(
            'publishAuthModes');
    this.region = registerOutput<String>('region');
    this.subscribeAuthModes =
        registerOutput<List<ChannelNamespaceSubscribeAuthMode>?>(
            'subscribeAuthModes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
