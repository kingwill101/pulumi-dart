// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for the url redirect action.
class UrlRedirectActionParametersResponse {
  /// Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  final String? customFragment;
  /// Host to redirect. Leave empty to use the incoming host as the destination host.
  final String? customHostname;
  /// The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  final String? customPath;
  /// The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. ? and & will be added automatically so do not include them.
  final String? customQueryString;
  /// Protocol to use for the redirect. The default value is MatchRequest
  final String? destinationProtocol;
  /// The redirect type the rule will use when redirecting traffic.
  final String redirectType;
  /// Expected value is 'DeliveryRuleUrlRedirectActionParameters'.
  final String typeName;

  /// Creates a new [UrlRedirectActionParametersResponse].
  /// [customFragment] Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  /// [customHostname] Host to redirect. Leave empty to use the incoming host as the destination host.
  /// [customPath] The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  /// [customQueryString] The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. ? and & will be added automatically so do not include them.
  /// [destinationProtocol] Protocol to use for the redirect. The default value is MatchRequest
  /// [redirectType] The redirect type the rule will use when redirecting traffic.
  /// [typeName] Expected value is 'DeliveryRuleUrlRedirectActionParameters'.
  UrlRedirectActionParametersResponse({
    this.customFragment,
    this.customHostname,
    this.customPath,
    this.customQueryString,
    this.destinationProtocol,
    required this.redirectType,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFragment': ?customFragment,
      'customHostname': ?customHostname,
      'customPath': ?customPath,
      'customQueryString': ?customQueryString,
      'destinationProtocol': ?destinationProtocol,
      'redirectType': redirectType,
      'typeName': typeName,
    };
  }

  factory UrlRedirectActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return UrlRedirectActionParametersResponse(
      customFragment: map['customFragment'] == null ? null : map['customFragment'] as String,
      customHostname: map['customHostname'] == null ? null : map['customHostname'] as String,
      customPath: map['customPath'] == null ? null : map['customPath'] as String,
      customQueryString: map['customQueryString'] == null ? null : map['customQueryString'] as String,
      destinationProtocol: map['destinationProtocol'] == null ? null : map['destinationProtocol'] as String,
      redirectType: map['redirectType'] as String,
      typeName: map['typeName'] as String,
    );
  }
}

