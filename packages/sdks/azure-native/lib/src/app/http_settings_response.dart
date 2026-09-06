// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_proxy_response.dart';
import 'http_settings_routes_response.dart';

/// The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
class HttpSettingsResponse {
  /// The configuration settings of a forward proxy used to make the requests.
  final pulumi.Input<ForwardProxyResponse?>? forwardProxy;
  /// &lt;code&gt;false&lt;/code&gt; if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool?>? requireHttps;
  /// The configuration settings of the paths HTTP requests.
  final pulumi.Input<HttpSettingsRoutesResponse?>? routes;

  /// Creates a new [HttpSettingsResponse].
  /// [forwardProxy] The configuration settings of a forward proxy used to make the requests.
  /// [requireHttps] &lt;code&gt;false&lt;/code&gt; if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [routes] The configuration settings of the paths HTTP requests.
  const HttpSettingsResponse({
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
      forwardProxy: (() { final guardedValue = map['forwardProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardProxyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireHttps: (() { final guardedValue = map['requireHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpSettingsRoutesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
