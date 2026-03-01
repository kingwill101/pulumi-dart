// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_group_response.dart';
import 'webhook_build_type_enum_value_response.dart';

/// Definition of Webhook
class WebhookResponse {
  /// <p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>
  final String? branchFilter;
  /// <p>Specifies the type of build this webhook will trigger.</p>
  final WebhookBuildTypeEnumValueResponse? buildType;
  /// <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>
  final List<FilterGroupResponse>? filterGroups;
  /// <p>A timestamp that indicates the last time a repository's secret token was modified. </p>
  final String? lastModifiedSecret;
  /// <p>The CodeBuild endpoint where webhook events are sent.</p>
  final String? payloadUrl;
  /// <p>The secret token of the associated repository. </p> <note> <p>A Bitbucket webhook does not support <code>secret</code>. </p> </note>
  final String? secret;
  /// <p>The URL to the webhook.</p>
  final String? url;

  /// Creates a new [WebhookResponse].
  /// [branchFilter] <p>A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If <code>branchFilter</code> is empty, then all branches are built.</p> <note> <p>It is recommended that you use <code>filterGroups</code> instead of <code>branchFilter</code>. </p> </note>
  /// [buildType] <p>Specifies the type of build this webhook will trigger.</p>
  /// [filterGroups] <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which webhooks are triggered. At least one <code>WebhookFilter</code> in the array must specify <code>EVENT</code> as its <code>type</code>. </p> <p>For a build to be triggered, at least one filter group in the <code>filterGroups</code> array must pass. For a filter group to pass, each of its filters must pass. </p>
  /// [lastModifiedSecret] <p>A timestamp that indicates the last time a repository's secret token was modified. </p>
  /// [payloadUrl] <p>The CodeBuild endpoint where webhook events are sent.</p>
  /// [secret] <p>The secret token of the associated repository. </p> <note> <p>A Bitbucket webhook does not support <code>secret</code>. </p> </note>
  /// [url] <p>The URL to the webhook.</p>
  WebhookResponse({
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
      'buildType': ?buildType == null ? null : buildType!.toMap(),
      'filterGroups': ?filterGroups == null ? null : pulumi.Input.encodeList<FilterGroupResponse, Map<String, dynamic>>(filterGroups!, (value) => value.toMap()),
      'lastModifiedSecret': ?lastModifiedSecret,
      'payloadUrl': ?payloadUrl,
      'secret': ?secret,
      'url': ?url,
    };
  }

  factory WebhookResponse.fromMap(Map<String, dynamic> map) {
    return WebhookResponse(
      branchFilter: map['branchFilter'] == null ? null : map['branchFilter'] as String,
      buildType: map['buildType'] == null ? null : WebhookBuildTypeEnumValueResponse.fromMap((map['buildType'] as Map).cast<String, dynamic>()),
      filterGroups: map['filterGroups'] == null ? null : pulumi.Input.decodeList<FilterGroupResponse>(map['filterGroups'], (value) => FilterGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastModifiedSecret: map['lastModifiedSecret'] == null ? null : map['lastModifiedSecret'] as String,
      payloadUrl: map['payloadUrl'] == null ? null : map['payloadUrl'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

