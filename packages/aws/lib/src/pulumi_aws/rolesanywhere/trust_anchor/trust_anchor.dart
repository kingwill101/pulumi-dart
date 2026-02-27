import 'package:pulumi/pulumi.dart' as pulumi;
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
class TrustAnchor extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Trust Anchor
  late final pulumi.Output<String> arn;

  /// Whether or not the Trust Anchor should be enabled.
  late final pulumi.Output<bool> enabled;

  /// The name of the Trust Anchor.
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<TrustAnchorNotificationSetting>>
      notificationSettings;

  /// The source of trust, documented below
  late final pulumi.Output<TrustAnchorSource> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  TrustAnchor(
    String name, {
    TrustAnchorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rolesanywhere/trustAnchor:TrustAnchor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
