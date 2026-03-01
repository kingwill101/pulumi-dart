// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for a request's query parameter.
class HttpQueryParameterMatchComputeBeta {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final String? exactMatch;

  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final String? name;

  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final bool? presentMatch;

  /// The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final String? regexMatch;

  /// Creates a new [HttpQueryParameterMatchComputeBeta].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  HttpQueryParameterMatchComputeBeta({
    this.exactMatch,
    this.name,
    this.presentMatch,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'name': ?name,
      'presentMatch': ?presentMatch,
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpQueryParameterMatchComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpQueryParameterMatchComputeBeta(
      exactMatch: map['exactMatch'] == null
          ? null
          : map['exactMatch'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      presentMatch: map['presentMatch'] == null
          ? null
          : map['presentMatch'] as bool,
      regexMatch: map['regexMatch'] == null
          ? null
          : map['regexMatch'] as String,
    );
  }
}
