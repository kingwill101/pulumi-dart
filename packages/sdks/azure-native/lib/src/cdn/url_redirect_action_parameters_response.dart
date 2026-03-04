// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the url redirect action.
class UrlRedirectActionParametersResponse {
  /// Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  final pulumi.Input<String>? customFragment;

  /// Host to redirect. Leave empty to use the incoming host as the destination host.
  final pulumi.Input<String>? customHostname;

  /// The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  final pulumi.Input<String>? customPath;

  /// The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in &lt;key&gt;=&lt;value&gt; format. ? and & will be added automatically so do not include them.
  final pulumi.Input<String>? customQueryString;

  /// Protocol to use for the redirect. The default value is MatchRequest
  final pulumi.Input<String>? destinationProtocol;

  /// The redirect type the rule will use when redirecting traffic.
  final pulumi.Input<String> redirectType;

  /// Expected value is 'DeliveryRuleUrlRedirectActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [UrlRedirectActionParametersResponse].
  /// [customFragment] Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  /// [customHostname] Host to redirect. Leave empty to use the incoming host as the destination host.
  /// [customPath] The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  /// [customQueryString] The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in &lt;key&gt;=&lt;value&gt; format. ? and & will be added automatically so do not include them.
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

  factory UrlRedirectActionParametersResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return UrlRedirectActionParametersResponse(
      customFragment: (() {
        final guardedValue = map['customFragment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customHostname: (() {
        final guardedValue = map['customHostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customPath: (() {
        final guardedValue = map['customPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customQueryString: (() {
        final guardedValue = map['customQueryString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationProtocol: (() {
        final guardedValue = map['destinationProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
