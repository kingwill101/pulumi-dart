// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_authentication_configuration.dart';
import 'webhook_filter.dart';

/// {@template pulumi_codepipeline_webhook_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_codepipeline_webhook_webhook_args_doc}
class WebhookArgs {
  /// The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  final pulumi.Input<String> authentication;

  /// An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  final pulumi.Input<WebhookAuthenticationConfiguration>?
      authenticationConfiguration;

  /// One or more `filter` blocks. Filter blocks are documented below.
  final pulumi.Input<List<WebhookFilter>> filters;

  /// The name of the webhook.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  final pulumi.Input<String> targetAction;

  /// The name of the pipeline.
  final pulumi.Input<String> targetPipeline;

  /// Creates a new [WebhookArgs].
  /// [authentication] The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  /// [authenticationConfiguration] An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  /// [filters] One or more `filter` blocks. Filter blocks are documented below.
  /// [name] The name of the webhook.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetAction] The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  /// [targetPipeline] The name of the pipeline.
  WebhookArgs({
    required String authentication,
    WebhookAuthenticationConfiguration? authenticationConfiguration,
    required List<WebhookFilter> filters,
    String? name,
    String? region,
    Map<String, String>? tags,
    required String targetAction,
    required String targetPipeline,
  })  : authentication = pulumi.Input.asInput<String>(authentication),
        authenticationConfiguration =
            pulumi.Input.asOptionalInput<WebhookAuthenticationConfiguration>(
                authenticationConfiguration),
        filters = pulumi.Input.asInput<List<WebhookFilter>>(filters),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetAction = pulumi.Input.asInput<String>(targetAction),
        targetPipeline = pulumi.Input.asInput<String>(targetPipeline);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authentication'] = authentication;
    final authenticationConfigurationValue = authenticationConfiguration;
    if (authenticationConfigurationValue != null) {
      map['authenticationConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WebhookAuthenticationConfiguration, Map<String, dynamic>>(
          authenticationConfigurationValue, (value) => value.toMap());
    }
    map['filters'] = pulumi.Input.mapInputValue<List<WebhookFilter>,
            List<Map<String, dynamic>>>(
        filters,
        (value) => pulumi.Input.encodeList<WebhookFilter, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetAction'] = targetAction;
    map['targetPipeline'] = targetPipeline;
    return map;
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      authentication: map['authentication'] as String,
      authenticationConfiguration: map['authenticationConfiguration'] == null
          ? null
          : WebhookAuthenticationConfiguration.fromMap(
              (map['authenticationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      filters: pulumi.Input.decodeList<WebhookFilter>(
          map['filters'],
          (value) =>
              WebhookFilter.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetAction: map['targetAction'] as String,
      targetPipeline: map['targetPipeline'] as String,
    );
  }
}
