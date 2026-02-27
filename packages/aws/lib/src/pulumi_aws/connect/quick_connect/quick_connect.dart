import 'package:pulumi/pulumi.dart';
import '../quick_connect_quick_connect_config/quick_connect_quick_connect_config.dart';
import 'quick_connect_args.dart';

/// Provides an Amazon Connect Quick Connect resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Quick Connects using the `instance_id` and `quick_connect_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/quickConnect:QuickConnect example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class QuickConnect extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Quick Connect.
  late final Output<String> arn;

  /// Specifies the description of the Quick Connect.
  late final Output<String?> description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// Specifies the name of the Quick Connect.
  late final Output<String> name;

  /// A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  late final Output<QuickConnectQuickConnectConfig> quickConnectConfig;

  /// The identifier for the Quick Connect.
  late final Output<String> quickConnectId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the Quick Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  QuickConnect(
    String name, {
    QuickConnectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/quickConnect:QuickConnect',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.quickConnectConfig =
        registerOutput<QuickConnectQuickConnectConfig>('quickConnectConfig');
    this.quickConnectId = registerOutput<String>('quickConnectId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
