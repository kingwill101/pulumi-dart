// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_group_response.dart';
import 'webhook_build_type_enum_value_response.dart';

/// Definition of Webhook
class WebhookResponse {
  /// &lt;p&gt;A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If &lt;code&gt;branchFilter&lt;/code&gt; is empty, then all branches are built.&lt;/p&gt; &lt;note&gt; &lt;p&gt;It is recommended that you use &lt;code&gt;filterGroups&lt;/code&gt; instead of &lt;code&gt;branchFilter&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String?>? branchFilter;
  /// &lt;p&gt;Specifies the type of build this webhook will trigger.&lt;/p&gt;
  final pulumi.Input<WebhookBuildTypeEnumValueResponse?>? buildType;
  /// &lt;p&gt;An array of arrays of &lt;code&gt;WebhookFilter&lt;/code&gt; objects used to determine which webhooks are triggered. At least one &lt;code&gt;WebhookFilter&lt;/code&gt; in the array must specify &lt;code&gt;EVENT&lt;/code&gt; as its &lt;code&gt;type&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;For a build to be triggered, at least one filter group in the &lt;code&gt;filterGroups&lt;/code&gt; array must pass. For a filter group to pass, each of its filters must pass. &lt;/p&gt;
  final pulumi.Input<List<FilterGroupResponse>?>? filterGroups;
  /// &lt;p&gt;A timestamp that indicates the last time a repository's secret token was modified. &lt;/p&gt;
  final pulumi.Input<String?>? lastModifiedSecret;
  /// &lt;p&gt;The CodeBuild endpoint where webhook events are sent.&lt;/p&gt;
  final pulumi.Input<String?>? payloadUrl;
  /// &lt;p&gt;The secret token of the associated repository. &lt;/p&gt; &lt;note&gt; &lt;p&gt;A Bitbucket webhook does not support &lt;code&gt;secret&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String?>? secret;
  /// &lt;p&gt;The URL to the webhook.&lt;/p&gt;
  final pulumi.Input<String?>? url;

  /// Creates a new [WebhookResponse].
  /// [branchFilter] &lt;p&gt;A regular expression used to determine which repository branches are built when a webhook is triggered. If the name of a branch matches the regular expression, then it is built. If &lt;code&gt;branchFilter&lt;/code&gt; is empty, then all branches are built.&lt;/p&gt; &lt;note&gt; &lt;p&gt;It is recommended that you use &lt;code&gt;filterGroups&lt;/code&gt; instead of &lt;code&gt;branchFilter&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt;
  /// [buildType] &lt;p&gt;Specifies the type of build this webhook will trigger.&lt;/p&gt;
  /// [filterGroups] &lt;p&gt;An array of arrays of &lt;code&gt;WebhookFilter&lt;/code&gt; objects used to determine which webhooks are triggered. At least one &lt;code&gt;WebhookFilter&lt;/code&gt; in the array must specify &lt;code&gt;EVENT&lt;/code&gt; as its &lt;code&gt;type&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;For a build to be triggered, at least one filter group in the &lt;code&gt;filterGroups&lt;/code&gt; array must pass. For a filter group to pass, each of its filters must pass. &lt;/p&gt;
  /// [lastModifiedSecret] &lt;p&gt;A timestamp that indicates the last time a repository's secret token was modified. &lt;/p&gt;
  /// [payloadUrl] &lt;p&gt;The CodeBuild endpoint where webhook events are sent.&lt;/p&gt;
  /// [secret] &lt;p&gt;The secret token of the associated repository. &lt;/p&gt; &lt;note&gt; &lt;p&gt;A Bitbucket webhook does not support &lt;code&gt;secret&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt;
  /// [url] &lt;p&gt;The URL to the webhook.&lt;/p&gt;
  const WebhookResponse({
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
      'buildType': ?pulumi.Input.mapOptionalInputValue<WebhookBuildTypeEnumValueResponse, Map<String, dynamic>>(buildType, (value) => value.toMap()),
      'filterGroups': ?pulumi.Input.mapOptionalInputValue<List<FilterGroupResponse>, List<Map<String, dynamic>>>(filterGroups, (value) => pulumi.Input.encodeList<FilterGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastModifiedSecret': ?lastModifiedSecret,
      'payloadUrl': ?payloadUrl,
      'secret': ?secret,
      'url': ?url,
    };
  }

  factory WebhookResponse.fromMap(Map<String, dynamic> map) {
    return WebhookResponse(
      branchFilter: (() { final guardedValue = map['branchFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildType: (() { final guardedValue = map['buildType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookBuildTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterGroups: (() { final guardedValue = map['filterGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterGroupResponse>(guardedValue, (value) => FilterGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastModifiedSecret: (() { final guardedValue = map['lastModifiedSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadUrl: (() { final guardedValue = map['payloadUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
