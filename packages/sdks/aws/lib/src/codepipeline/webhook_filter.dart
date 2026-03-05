// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookFilter {
  /// The [JSON path](https://github.com/json-path/JsonPath) to filter on.
  final pulumi.Input<String> jsonPath;
  /// The value to match on (e.g., `refs/heads/{Branch}`). See [AWS docs](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_WebhookFilterRule.html) for details.
  final pulumi.Input<String> matchEquals;

  /// Creates a new [WebhookFilter].
  /// [jsonPath] The [JSON path](https://github.com/json-path/JsonPath) to filter on.
  /// [matchEquals] The value to match on (e.g., `refs/heads/{Branch}`). See [AWS docs](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_WebhookFilterRule.html) for details.
  WebhookFilter({
    required this.jsonPath,
    required this.matchEquals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonPath': jsonPath,
      'matchEquals': matchEquals,
    };
  }

  factory WebhookFilter.fromMap(Map<String, dynamic> map) {
    return WebhookFilter(
      jsonPath: pulumi.Input.fromValue(map['jsonPath'] as String),
      matchEquals: pulumi.Input.fromValue(map['matchEquals'] as String),
    );
  }
}

