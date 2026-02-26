// ignore_for_file: unused_element, unnecessary_cast

class WebhookFilter {
  /// The [JSON path](https://github.com/json-path/JsonPath) to filter on.
  final String jsonPath;

  /// The value to match on (e.g., `refs/heads/{Branch}`). See [AWS docs](https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_WebhookFilterRule.html) for details.
  final String matchEquals;

  WebhookFilter({
    required this.jsonPath,
    required this.matchEquals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonPath'] = jsonPath;
    map['matchEquals'] = matchEquals;
    return map;
  }

  factory WebhookFilter.fromMap(Map<String, dynamic> map) {
    return WebhookFilter(
      jsonPath: map['jsonPath'] as String,
      matchEquals: map['matchEquals'] as String,
    );
  }
}
