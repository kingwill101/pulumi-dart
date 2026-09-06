import 'package:pulumi/pulumi.dart' as pulumi;

/// The variable type to be excluded.
enum ManagedRuleExclusionMatchVariable implements pulumi.PulumiEnum<String> {
  requestHeaderNames("RequestHeaderNames"),
  requestCookieNames("RequestCookieNames"),
  queryStringArgNames("QueryStringArgNames"),
  requestBodyPostArgNames("RequestBodyPostArgNames"),
  requestBodyJsonArgNames("RequestBodyJsonArgNames");

  const ManagedRuleExclusionMatchVariable(this.wireValue);
  @override
  final String wireValue;

  static ManagedRuleExclusionMatchVariable fromValue(String value) {
    for (final item in ManagedRuleExclusionMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedRuleExclusionMatchVariable value: $value');
  }
}
