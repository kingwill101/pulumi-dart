// ignore_for_file: unused_element, unnecessary_cast

/// HttpRouteRuleMatch criteria for a request's query parameter.
class HttpQueryParameterMatchResponseComputeV1 {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final String exactMatch;

  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final String name;

  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not. Only one of presentMatch, exactMatch, or regexMatch must be set.
  final bool presentMatch;

  /// The queryParameterMatch matches if the value of the parameter matches the regular expression specified by regexMatch. For more information about regular expression syntax, see Syntax. Only one of presentMatch, exactMatch, or regexMatch must be set. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final String regexMatch;

  HttpQueryParameterMatchResponseComputeV1({
    required this.exactMatch,
    required this.name,
    required this.presentMatch,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exactMatch'] = exactMatch;
    map['name'] = name;
    map['presentMatch'] = presentMatch;
    map['regexMatch'] = regexMatch;
    return map;
  }

  factory HttpQueryParameterMatchResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return HttpQueryParameterMatchResponseComputeV1(
      exactMatch: map['exactMatch'] as String,
      name: map['name'] as String,
      presentMatch: map['presentMatch'] as bool,
      regexMatch: map['regexMatch'] as String,
    );
  }
}
