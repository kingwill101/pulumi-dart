// ignore_for_file: unused_element, unnecessary_cast

class RoutingRuleActionInvokeApi {
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final String apiId;

  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final String stage;

  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final bool? stripBasePath;

  RoutingRuleActionInvokeApi({
    required this.apiId,
    required this.stage,
    this.stripBasePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['stage'] = stage;
    final stripBasePathValue = stripBasePath;
    if (stripBasePathValue != null) {
      map['stripBasePath'] = stripBasePathValue;
    }
    return map;
  }

  factory RoutingRuleActionInvokeApi.fromMap(Map<String, dynamic> map) {
    return RoutingRuleActionInvokeApi(
      apiId: map['apiId'] as String,
      stage: map['stage'] as String,
      stripBasePath:
          map['stripBasePath'] == null ? null : map['stripBasePath'] as bool,
    );
  }
}
