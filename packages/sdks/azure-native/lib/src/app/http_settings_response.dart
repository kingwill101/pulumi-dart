// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_proxy_response.dart';
import 'http_settings_routes_response.dart';

/// The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
class HttpSettingsResponse {
  /// The configuration settings of a forward proxy used to make the requests.
  final pulumi.Input<ForwardProxyResponse>? forwardProxy;
  /// <code>false</code> if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, <code>true</code>.
  final pulumi.Input<bool>? requireHttps;
  /// The configuration settings of the paths HTTP requests.
  final pulumi.Input<HttpSettingsRoutesResponse>? routes;

  /// Creates a new [HttpSettingsResponse].
  /// [forwardProxy] The configuration settings of a forward proxy used to make the requests.
  /// [requireHttps] <code>false</code> if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, <code>true</code>.
  /// [routes] The configuration settings of the paths HTTP requests.
  HttpSettingsResponse({
    this.forwardProxy,
    this.requireHttps,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxy': ?pulumi.Input.mapOptionalInputValue<ForwardProxyResponse, Map<String, dynamic>>(forwardProxy, (value) => value.toMap()),
      'requireHttps': ?requireHttps,
      'routes': ?pulumi.Input.mapOptionalInputValue<HttpSettingsRoutesResponse, Map<String, dynamic>>(routes, (value) => value.toMap()),
    };
  }

  factory HttpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return HttpSettingsResponse(
      forwardProxy: map['forwardProxy'] == null ? null : (ForwardProxyResponse.fromMap((map['forwardProxy'] as Map).cast<String, dynamic>())).input(),
      requireHttps: map['requireHttps'] == null ? null : (map['requireHttps'] as bool).input(),
      routes: map['routes'] == null ? null : (HttpSettingsRoutesResponse.fromMap((map['routes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

