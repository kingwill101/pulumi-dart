// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingRuleConditionMatchHeadersAnyOf {
  /// The case insensitive header name to be matched. The header name must be less than 40 characters and the only allowed characters are a-z, A-Z, 0-9, and the following special characters: *?-!#$%&'.^_`|~.
  final pulumi.Input<String> header;
  /// The case sensitive header glob value to be matched against entire header value. The header glob value must be less than 128 characters and the only allowed characters are a-z, A-Z, 0-9, and the following special characters: \*?-!#$%&'.^_`|~. Wildcard matching is supported for header glob values but must be for \*prefix-match, suffix-match*, or \*infix*-match.
  final pulumi.Input<String> valueGlob;

  /// Creates a new [RoutingRuleConditionMatchHeadersAnyOf].
  /// [header] The case insensitive header name to be matched. The header name must be less than 40 characters and the only allowed characters are a-z, A-Z, 0-9, and the following special characters: *?-!#$%&'.^_`|~.
  /// [valueGlob] The case sensitive header glob value to be matched against entire header value. The header glob value must be less than 128 characters and the only allowed characters are a-z, A-Z, 0-9, and the following special characters: \*?-!#$%&'.^_`|~. Wildcard matching is supported for header glob values but must be for \*prefix-match, suffix-match*, or \*infix*-match.
  const RoutingRuleConditionMatchHeadersAnyOf({
    required this.header,
    required this.valueGlob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'valueGlob': valueGlob,
    };
  }

  factory RoutingRuleConditionMatchHeadersAnyOf.fromMap(Map<String, dynamic> map) {
    return RoutingRuleConditionMatchHeadersAnyOf(
      header: pulumi.Input.fromValue(map['header'] as String),
      valueGlob: pulumi.Input.fromValue(map['valueGlob'] as String),
    );
  }
}

