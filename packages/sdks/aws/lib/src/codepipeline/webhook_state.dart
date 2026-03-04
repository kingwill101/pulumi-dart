// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_authentication_configuration.dart';
import 'webhook_filter.dart';

/// Input properties used for looking up and filtering Webhook resources.
class WebhookState {
  /// The CodePipeline webhook's ARN.
  final pulumi.Input<String>? arn;

  /// The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  final pulumi.Input<String>? authentication;

  /// An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  final pulumi.Input<WebhookAuthenticationConfiguration>?
  authenticationConfiguration;

  /// One or more `filter` blocks. Filter blocks are documented below.
  final pulumi.Input<List<WebhookFilter>>? filters;

  /// The name of the webhook.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  final pulumi.Input<String>? targetAction;

  /// The name of the pipeline.
  final pulumi.Input<String>? targetPipeline;

  /// The CodePipeline webhook's URL. POST events to this endpoint to trigger the target.
  final pulumi.Input<String>? url;

  /// Creates a new [WebhookState].
  /// [arn] The CodePipeline webhook's ARN.
  /// [authentication] The type of authentication  to use. One of `IP`, `GITHUB_HMAC`, or `UNAUTHENTICATED`.
  /// [authenticationConfiguration] An `auth` block. Required for `IP` and `GITHUB_HMAC`. Auth blocks are documented below.
  /// [filters] One or more `filter` blocks. Filter blocks are documented below.
  /// [name] The name of the webhook.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetAction] The name of the action in a pipeline you want to connect to the webhook. The action must be from the source (first) stage of the pipeline.
  /// [targetPipeline] The name of the pipeline.
  /// [url] The CodePipeline webhook's URL. POST events to this endpoint to trigger the target.
  WebhookState({
    this.arn,
    this.authentication,
    this.authenticationConfiguration,
    this.filters,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetAction,
    this.targetPipeline,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authentication': ?authentication,
      'authenticationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WebhookAuthenticationConfiguration,
            Map<String, dynamic>
          >(authenticationConfiguration, (value) => value.toMap()),
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<WebhookFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<WebhookFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetAction': ?targetAction,
      'targetPipeline': ?targetPipeline,
      'url': ?url,
    };
  }

  factory WebhookState.fromMap(Map<String, dynamic> map) {
    return WebhookState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authenticationConfiguration: (() {
        final guardedValue = map['authenticationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebhookAuthenticationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WebhookFilter>(
            guardedValue,
            (value) =>
                WebhookFilter.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetAction: (() {
        final guardedValue = map['targetAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetPipeline: (() {
        final guardedValue = map['targetPipeline'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
