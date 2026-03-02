// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_group.dart';
import 'webhook_build_type_enum_value.dart';

/// Definition of Webhook
class Webhook {
  /// <p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>
  final pulumi.Input<String>? branchFilter;
  /// <p>Specifies the type of build this webhook will trigger.</p>
  final pulumi.Input<WebhookBuildTypeEnumValue>? buildType;
  /// <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>
  final pulumi.Input<List<FilterGroup>>? filterGroups;
  /// <p>A timestamp that indicates the last time a repository's secret token was modified. </p>
  final pulumi.Input<String>? lastModifiedSecret;
  /// <p>The CodeBuild endpoint where webhook events are sent.</p>
  final pulumi.Input<String>? payloadUrl;
  /// <p>The secret token of the associated repository. </p> <note> <p>A Bitbucket webhook does not support <code>secret</code>. </p> </note>
  final pulumi.Input<String>? secret;
  /// <p>The URL to the webhook.</p>
  final pulumi.Input<String>? url;

  /// Creates a new [Webhook].
  /// [branchFilter] <p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>
  /// [buildType] <p>Specifies the type of build this webhook will trigger.</p>
  /// [filterGroups] <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>
  /// [lastModifiedSecret] <p>A timestamp that indicates the last time a repository's secret token was modified. </p>
  /// [payloadUrl] <p>The CodeBuild endpoint where webhook events are sent.</p>
  /// [secret] <p>The secret token of the associated repository. </p> <note> <p>A Bitbucket webhook does not support <code>secret</code>. </p> </note>
  /// [url] <p>The URL to the webhook.</p>
  Webhook({
    this.branchFilter,
    this.buildType,
    this.filterGroups,
    this.lastModifiedSecret,
    this.payloadUrl,
    this.secret,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchFilter': ?branchFilter,
      'buildType': ?pulumi.Input.mapOptionalInputValue<WebhookBuildTypeEnumValue, Map<String, dynamic>>(buildType, (value) => value.toMap()),
      'filterGroups': ?pulumi.Input.mapOptionalInputValue<List<FilterGroup>, List<Map<String, dynamic>>>(filterGroups, (value) => pulumi.Input.encodeList<FilterGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastModifiedSecret': ?lastModifiedSecret,
      'payloadUrl': ?payloadUrl,
      'secret': ?secret,
      'url': ?url,
    };
  }

  factory Webhook.fromMap(Map<String, dynamic> map) {
    return Webhook(
      branchFilter: map['branchFilter'] == null ? null : (map['branchFilter'] as String).input(),
      buildType: map['buildType'] == null ? null : (WebhookBuildTypeEnumValue.fromMap((map['buildType'] as Map).cast<String, dynamic>())).input(),
      filterGroups: map['filterGroups'] == null ? null : (pulumi.Input.decodeList<FilterGroup>(map['filterGroups'], (value) => FilterGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastModifiedSecret: map['lastModifiedSecret'] == null ? null : (map['lastModifiedSecret'] as String).input(),
      payloadUrl: map['payloadUrl'] == null ? null : (map['payloadUrl'] as String).input(),
      secret: map['secret'] == null ? null : (map['secret'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

