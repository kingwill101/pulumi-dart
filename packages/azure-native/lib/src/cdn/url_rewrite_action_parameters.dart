// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for the url rewrite action.
class UrlRewriteActionParameters {
  /// Define the relative URL to which the above requests will be rewritten by.
  final String destination;
  /// Whether to preserve unmatched path. Default value is true.
  final bool? preserveUnmatchedPath;
  /// define a request URI pattern that identifies the type of requests that may be rewritten. If value is blank, all strings are matched.
  final String sourcePattern;
  /// Expected value is 'DeliveryRuleUrlRewriteActionParameters'.
  final String typeName;

  /// Creates a new [UrlRewriteActionParameters].
  /// [destination] Define the relative URL to which the above requests will be rewritten by.
  /// [preserveUnmatchedPath] Whether to preserve unmatched path. Default value is true.
  /// [sourcePattern] define a request URI pattern that identifies the type of requests that may be rewritten. If value is blank, all strings are matched.
  /// [typeName] Expected value is 'DeliveryRuleUrlRewriteActionParameters'.
  UrlRewriteActionParameters({
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

  factory UrlRewriteActionParameters.fromMap(Map<String, dynamic> map) {
    return UrlRewriteActionParameters(
      destination: map['destination'] as String,
      preserveUnmatchedPath: map['preserveUnmatchedPath'] == null ? null : map['preserveUnmatchedPath'] as bool,
      sourcePattern: map['sourcePattern'] as String,
      typeName: map['typeName'] as String,
    );
  }
}

