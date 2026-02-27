// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../webhook_authentication_configuration/webhook_authentication_configuration.dart';
import '../webhook_filter/webhook_filter.dart';

/// The set of arguments for Webhook.
class WebhookArgs3 {
  /// The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  final Input<String> authentication;

  /// An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  final Input<WebhookAuthenticationConfiguration>? authenticationConfiguration;

  /// One or more `filter` blocks. Filter blocks are documented below.
  final Input<List<WebhookFilter>> filters;

  /// The name of the webhook.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  final Input<String> targetAction;

  /// The name of the pipeline.
  final Input<String> targetPipeline;

  WebhookArgs3({
    required this.authentication,
    this.authenticationConfiguration,
    required this.filters,
    this.name,
    this.region,
    this.tags,
    required this.targetAction,
    required this.targetPipeline,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authentication'] = authentication;
    final authenticationConfigurationValue = authenticationConfiguration;
    if (authenticationConfigurationValue != null) {
      map['authenticationConfiguration'] = Input.mapOptionalInputValue<
              WebhookAuthenticationConfiguration, Map<String, dynamic>>(
          authenticationConfigurationValue, (value) => value.toMap());
    }
    map['filters'] =
        Input.mapInputValue<List<WebhookFilter>, List<Map<String, dynamic>>>(
            filters,
            (value) => Input.encodeList<WebhookFilter, Map<String, dynamic>>(
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

  factory WebhookArgs3.fromMap(Map<String, dynamic> map) {
    return WebhookArgs3(
      authentication: Input.asInput<String>(map['authentication']),
      authenticationConfiguration:
          Input.asOptionalInput<WebhookAuthenticationConfiguration>(
              map['authenticationConfiguration']),
      filters: Input.asInput<List<WebhookFilter>>(map['filters']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetAction: Input.asInput<String>(map['targetAction']),
      targetPipeline: Input.asInput<String>(map['targetPipeline']),
    );
  }
}
