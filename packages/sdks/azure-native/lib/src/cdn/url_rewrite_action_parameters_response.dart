// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the url rewrite action.
class UrlRewriteActionParametersResponse {
  /// Define the relative URL to which the above requests will be rewritten by.
  final pulumi.Input<String> destination;

  /// Whether to preserve unmatched path. Default value is true.
  final pulumi.Input<bool>? preserveUnmatchedPath;

  /// define a request URI pattern that identifies the type of requests that may be rewritten. If value is blank, all strings are matched.
  final pulumi.Input<String> sourcePattern;

  /// Expected value is 'DeliveryRuleUrlRewriteActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [UrlRewriteActionParametersResponse].
  /// [destination] Define the relative URL to which the above requests will be rewritten by.
  /// [preserveUnmatchedPath] Whether to preserve unmatched path. Default value is true.
  /// [sourcePattern] define a request URI pattern that identifies the type of requests that may be rewritten. If value is blank, all strings are matched.
  /// [typeName] Expected value is 'DeliveryRuleUrlRewriteActionParameters'.
  UrlRewriteActionParametersResponse({
    required this.destination,
    this.preserveUnmatchedPath,
    required this.sourcePattern,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'preserveUnmatchedPath': ?preserveUnmatchedPath,
      'sourcePattern': sourcePattern,
      'typeName': typeName,
    };
  }

  factory UrlRewriteActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return UrlRewriteActionParametersResponse(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      preserveUnmatchedPath: (() {
        final guardedValue = map['preserveUnmatchedPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourcePattern: pulumi.Input.fromValue(map['sourcePattern'] as String),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
