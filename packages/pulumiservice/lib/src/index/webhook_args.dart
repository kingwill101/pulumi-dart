// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_filters.dart';
import 'webhook_format.dart';
import 'webhook_group.dart';

/// {@template pulumi_index_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_index_webhook_args_doc}
class WebhookArgs {
  /// Indicates whether this webhook is enabled or not.
  final pulumi.Input<bool> active;
  /// The friendly name displayed in the Pulumi Cloud.
  final pulumi.Input<String> displayName;
  /// Name of the environment. Only specified if this is an environment webhook.
  final pulumi.Input<String>? environmentName;
  /// Optional set of filters to apply to the webhook. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#filters) for more information.
  final pulumi.Input<List<WebhookFilters>>? filters;
  /// Format of the webhook payload. Can be either `raw` or `slack`. Defaults to `raw`.
  final pulumi.Input<WebhookFormat>? format;
  /// Optional set of filter groups to apply to the webhook. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#groups) for more information.
  final pulumi.Input<List<WebhookGroup>>? groups;
  /// Name of the organization.
  final pulumi.Input<String> organizationName;
  /// URL to send request to.
  final pulumi.Input<String> payloadUrl;
  /// Name of the project. Only specified if this is a stack or environment webhook.
  final pulumi.Input<String>? projectName;
  /// Optional. secret used as the HMAC key. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#headers) for more information.
  final pulumi.Input<String>? secret;
  /// Name of the stack. Only needed if this is a stack webhook.
  final pulumi.Input<String>? stackName;

  /// Creates a new [WebhookArgs].
  /// [active] Indicates whether this webhook is enabled or not.
  /// [displayName] The friendly name displayed in the Pulumi Cloud.
  /// [environmentName] Name of the environment. Only specified if this is an environment webhook.
  /// [filters] Optional set of filters to apply to the webhook. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#filters) for more information.
  /// [format] Format of the webhook payload. Can be either `raw` or `slack`. Defaults to `raw`.
  /// [groups] Optional set of filter groups to apply to the webhook. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#groups) for more information.
  /// [organizationName] Name of the organization.
  /// [payloadUrl] URL to send request to.
  /// [projectName] Name of the project. Only specified if this is a stack or environment webhook.
  /// [secret] Optional. secret used as the HMAC key. See [webhook docs](https://www.pulumi.com/docs/intro/pulumi-service/webhooks/#headers) for more information.
  /// [stackName] Name of the stack. Only needed if this is a stack webhook.
  WebhookArgs({
    required bool active,
    required String displayName,
    String? environmentName,
    List<WebhookFilters>? filters,
    WebhookFormat? format,
    List<WebhookGroup>? groups,
    required String organizationName,
    required String payloadUrl,
    String? projectName,
    String? secret,
    String? stackName,
  }) :
      active = pulumi.Input.asInput<bool>(active),
      displayName = pulumi.Input.asInput<String>(displayName),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      filters = pulumi.Input.asOptionalInput<List<WebhookFilters>>(filters),
      format = pulumi.Input.asOptionalInput<WebhookFormat>(format),
      groups = pulumi.Input.asOptionalInput<List<WebhookGroup>>(groups),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      payloadUrl = pulumi.Input.asInput<String>(payloadUrl),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      secret = pulumi.Input.asOptionalInput<String>(secret),
      stackName = pulumi.Input.asOptionalInput<String>(stackName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'displayName': displayName,
      'environmentName': ?environmentName,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<WebhookFilters>, List<String>>(filters, (value) => pulumi.Input.encodeList<WebhookFilters, String>(value, (value) => value.value)),
      'format': ?pulumi.Input.mapOptionalInputValue<WebhookFormat, String>(format, (value) => value.value),
      'groups': ?pulumi.Input.mapOptionalInputValue<List<WebhookGroup>, List<String>>(groups, (value) => pulumi.Input.encodeList<WebhookGroup, String>(value, (value) => value.value)),
      'organizationName': organizationName,
      'payloadUrl': payloadUrl,
      'projectName': ?projectName,
      'secret': ?secret,
      'stackName': ?stackName,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      active: map['active'] as bool,
      displayName: map['displayName'] as String,
      environmentName: map['environmentName'] == null ? null : map['environmentName'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<WebhookFilters>(map['filters'], (value) => WebhookFilters.fromValue(value as String)),
      format: map['format'] == null ? null : WebhookFormat.fromValue(map['format'] as String),
      groups: map['groups'] == null ? null : pulumi.Input.decodeList<WebhookGroup>(map['groups'], (value) => WebhookGroup.fromValue(value as String)),
      organizationName: map['organizationName'] as String,
      payloadUrl: map['payloadUrl'] as String,
      projectName: map['projectName'] == null ? null : map['projectName'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      stackName: map['stackName'] == null ? null : map['stackName'] as String,
    );
  }
}

