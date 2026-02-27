import 'package:pulumi/pulumi.dart';
import '../trust_anchor_notification_setting/trust_anchor_notification_setting.dart';
import '../trust_anchor_source/trust_anchor_source.dart';
import 'trust_anchor_args.dart';

/// Resource for managing a Roles Anywhere Trust Anchor.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rolesanywhere.TrustAnchor` using its `id`. For example:
///
/// ```sh
/// $ pulumi import aws:rolesanywhere/trustAnchor:TrustAnchor example 92b2fbbb-984d-41a3-a765-e3cbdb69ebb1
/// ```
class TrustAnchor extends CustomResource {
  /// Amazon Resource Name (ARN) of the Trust Anchor
  late final Output<String> arn;

  /// Whether or not the Trust Anchor should be enabled.
  late final Output<bool> enabled;

  /// The name of the Trust Anchor.
  late final Output<String> name;
  late final Output<List<TrustAnchorNotificationSetting>> notificationSettings;

  /// The source of trust, documented below
  late final Output<TrustAnchorSource> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  TrustAnchor(
    String name, {
    TrustAnchorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/trustAnchor:TrustAnchor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.name = registerOutput<String>('name');
    this.notificationSettings =
        registerOutput<List<TrustAnchorNotificationSetting>>(
            'notificationSettings');
    this.source = registerOutput<TrustAnchorSource>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
