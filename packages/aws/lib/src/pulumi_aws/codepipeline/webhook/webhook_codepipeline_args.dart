// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../webhook_authentication_configuration/webhook_authentication_configuration.dart';
import '../webhook_filter/webhook_filter.dart';

/// The set of arguments for Webhook.
class WebhookCodepipelineArgs {
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

  WebhookCodepipelineArgs({
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

  factory WebhookCodepipelineArgs.fromMap(Map<String, dynamic> map) {
    return WebhookCodepipelineArgs(
      authentication: pulumi.Input.asInput<String>(map['authentication']),
      authenticationConfiguration:
          pulumi.Input.asOptionalInput<WebhookAuthenticationConfiguration>(
              map['authenticationConfiguration']),
      filters: pulumi.Input.asInput<List<WebhookFilter>>(map['filters']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetAction: pulumi.Input.asInput<String>(map['targetAction']),
      targetPipeline: pulumi.Input.asInput<String>(map['targetPipeline']),
    );
  }
}
