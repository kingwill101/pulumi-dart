// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookFilterGroupFilter {
  /// If set to `true`, the specified filter does *not* trigger a build. Defaults to `false`.
  final pulumi.Input<bool>? excludeMatchedPattern;
  /// For a filter that uses `EVENT` type, a comma-separated string that specifies one event: `PUSH`, `PULL_REQUEST_CREATED`, `PULL_REQUEST_UPDATED`, `PULL_REQUEST_REOPENED`. `PULL_REQUEST_MERGED`, `WORKFLOW_JOB_QUEUED` works with GitHub & GitHub Enterprise only. For a filter that uses any of the other filter types, a regular expression.
  final pulumi.Input<String> pattern;
  /// The webhook filter group's type. Valid values for this parameter are: `EVENT`, `BASE_REF`, `HEAD_REF`, `ACTOR_ACCOUNT_ID`, `FILE_PATH`, `COMMIT_MESSAGE`, `WORKFLOW_NAME`, `TAG_NAME`, `RELEASE_NAME`, `REPOSITORY_NAME`. At least one filter group must specify `EVENT` as its type.
  final pulumi.Input<String> type;

  /// Creates a new [WebhookFilterGroupFilter].
  /// [excludeMatchedPattern] If set to `true`, the specified filter does *not* trigger a build. Defaults to `false`.
  /// [pattern] For a filter that uses `EVENT` type, a comma-separated string that specifies one event: `PUSH`, `PULL_REQUEST_CREATED`, `PULL_REQUEST_UPDATED`, `PULL_REQUEST_REOPENED`. `PULL_REQUEST_MERGED`, `WORKFLOW_JOB_QUEUED` works with GitHub & GitHub Enterprise only. For a filter that uses any of the other filter types, a regular expression.
  /// [type] The webhook filter group's type. Valid values for this parameter are: `EVENT`, `BASE_REF`, `HEAD_REF`, `ACTOR_ACCOUNT_ID`, `FILE_PATH`, `COMMIT_MESSAGE`, `WORKFLOW_NAME`, `TAG_NAME`, `RELEASE_NAME`, `REPOSITORY_NAME`. At least one filter group must specify `EVENT` as its type.
  const WebhookFilterGroupFilter({
    this.excludeMatchedPattern,
    required this.pattern,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeMatchedPattern': ?excludeMatchedPattern,
      'pattern': pattern,
      'type': type,
    };
  }

  factory WebhookFilterGroupFilter.fromMap(Map<String, dynamic> map) {
    return WebhookFilterGroupFilter(
      excludeMatchedPattern: (() { final guardedValue = map['excludeMatchedPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
