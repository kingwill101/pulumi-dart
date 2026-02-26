// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleConditionHttpRequestMethod {
  /// Set of <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span>-<span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> pairs indicating the query string parameters to match.
  final List<String> values;

  GetListenerRuleConditionHttpRequestMethod({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GetListenerRuleConditionHttpRequestMethod.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleConditionHttpRequestMethod(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
