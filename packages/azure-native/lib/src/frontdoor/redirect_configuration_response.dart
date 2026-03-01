// ignore_for_file: unused_element, unnecessary_cast


/// Describes Redirect Route.
class RedirectConfigurationResponse {
  /// Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  final String? customFragment;
  /// Host to redirect. Leave empty to use the incoming host as the destination host.
  final String? customHost;
  /// The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  final String? customPath;
  /// The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.
  final String? customQueryString;
  /// Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration'.
  final String odataType;
  /// The protocol of the destination to where the traffic is redirected
  final String? redirectProtocol;
  /// The redirect type the rule will use when redirecting traffic.
  final String? redirectType;

  /// Creates a new [RedirectConfigurationResponse].
  /// [customFragment] Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  /// [customHost] Host to redirect. Leave empty to use the incoming host as the destination host.
  /// [customPath] The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  /// [customQueryString] The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.
  /// [odataType] Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration'.
  /// [redirectProtocol] The protocol of the destination to where the traffic is redirected
  /// [redirectType] The redirect type the rule will use when redirecting traffic.
  RedirectConfigurationResponse({
    this.customFragment,
    this.customHost,
    this.customPath,
    this.customQueryString,
    required this.odataType,
    this.redirectProtocol,
    this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFragment': ?customFragment,
      'customHost': ?customHost,
      'customPath': ?customPath,
      'customQueryString': ?customQueryString,
      'odataType': odataType,
      'redirectProtocol': ?redirectProtocol,
      'redirectType': ?redirectType,
    };
  }

  factory RedirectConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RedirectConfigurationResponse(
      customFragment: map['customFragment'] == null ? null : map['customFragment'] as String,
      customHost: map['customHost'] == null ? null : map['customHost'] as String,
      customPath: map['customPath'] == null ? null : map['customPath'] as String,
      customQueryString: map['customQueryString'] == null ? null : map['customQueryString'] as String,
      odataType: map['odataType'] as String,
      redirectProtocol: map['redirectProtocol'] == null ? null : map['redirectProtocol'] as String,
      redirectType: map['redirectType'] == null ? null : map['redirectType'] as String,
    );
  }
}

