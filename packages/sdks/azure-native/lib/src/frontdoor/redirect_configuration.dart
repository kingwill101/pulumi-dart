// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes Redirect Route.
class RedirectConfiguration {
  /// Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  final pulumi.Input<String>? customFragment;
  /// Host to redirect. Leave empty to use the incoming host as the destination host.
  final pulumi.Input<String>? customHost;
  /// The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  final pulumi.Input<String>? customPath;
  /// The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in &lt;key&gt;=&lt;value&gt; format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.
  final pulumi.Input<String>? customQueryString;
  /// Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration'.
  final pulumi.Input<String> odataType;
  /// The protocol of the destination to where the traffic is redirected
  final pulumi.Input<String>? redirectProtocol;
  /// The redirect type the rule will use when redirecting traffic.
  final pulumi.Input<String>? redirectType;

  /// Creates a new [RedirectConfiguration].
  /// [customFragment] Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
  /// [customHost] Host to redirect. Leave empty to use the incoming host as the destination host.
  /// [customPath] The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
  /// [customQueryString] The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in &lt;key&gt;=&lt;value&gt; format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.
  /// [odataType] Expected value is '#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration'.
  /// [redirectProtocol] The protocol of the destination to where the traffic is redirected
  /// [redirectType] The redirect type the rule will use when redirecting traffic.
  const RedirectConfiguration({
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

  factory RedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return RedirectConfiguration(
      customFragment: (() { final guardedValue = map['customFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customHost: (() { final guardedValue = map['customHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPath: (() { final guardedValue = map['customPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customQueryString: (() { final guardedValue = map['customQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
      redirectProtocol: (() { final guardedValue = map['redirectProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectType: (() { final guardedValue = map['redirectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
