// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../uptime_check_config_http_check_accepted_response_status_code/uptime_check_config_http_check_accepted_response_status_code.dart';
import '../uptime_check_config_http_check_auth_info/uptime_check_config_http_check_auth_info.dart';
import '../uptime_check_config_http_check_ping_config/uptime_check_config_http_check_ping_config.dart';
import '../uptime_check_config_http_check_service_agent_authentication/uptime_check_config_http_check_service_agent_authentication.dart';

class UptimeCheckConfigHttpCheck {
  /// If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299.
  /// Structure is documented below.
  final List<UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>?
      acceptedResponseStatusCodes;

  /// The authentication information using username and password. Optional when creating an HTTP check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckAuthInfo? authInfo;

  /// The request body associated with the HTTP POST request. If <span pulumi-lang-nodejs="`contentType`" pulumi-lang-dotnet="`ContentType`" pulumi-lang-go="`contentType`" pulumi-lang-python="`content_type`" pulumi-lang-yaml="`contentType`" pulumi-lang-java="`contentType`">`content_type`</span> is `URL_ENCODED`, the body passed in must be URL-encoded. Users can provide a `Content-Length` header via the <span pulumi-lang-nodejs="`headers`" pulumi-lang-dotnet="`Headers`" pulumi-lang-go="`headers`" pulumi-lang-python="`headers`" pulumi-lang-yaml="`headers`" pulumi-lang-java="`headers`">`headers`</span> field or the API will do so. If the <span pulumi-lang-nodejs="`requestMethod`" pulumi-lang-dotnet="`RequestMethod`" pulumi-lang-go="`requestMethod`" pulumi-lang-python="`request_method`" pulumi-lang-yaml="`requestMethod`" pulumi-lang-java="`requestMethod`">`request_method`</span> is `GET` and <span pulumi-lang-nodejs="`body`" pulumi-lang-dotnet="`Body`" pulumi-lang-go="`body`" pulumi-lang-python="`body`" pulumi-lang-yaml="`body`" pulumi-lang-java="`body`">`body`</span> is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. `foo=bar` in URL-encoded form is `foo%3Dbar` and in base64 encoding is `Zm9vJTI1M0RiYXI=`.
  final String? body;

  /// The content type to use for the check.
  /// Possible values are: `TYPE_UNSPECIFIED`, `URL_ENCODED`, `USER_PROVIDED`.
  final String? contentType;

  /// A user provided content type header to use for the check. The invalid configurations outlined in the <span pulumi-lang-nodejs="`contentType`" pulumi-lang-dotnet="`ContentType`" pulumi-lang-go="`contentType`" pulumi-lang-python="`content_type`" pulumi-lang-yaml="`contentType`" pulumi-lang-java="`contentType`">`content_type`</span> field apply to<span pulumi-lang-nodejs=" customContentType`" pulumi-lang-dotnet=" CustomContentType`" pulumi-lang-go=" customContentType`" pulumi-lang-python=" custom_content_type`" pulumi-lang-yaml=" customContentType`" pulumi-lang-java=" customContentType`"> custom_content_type`</span>, as well as the following 1. <span pulumi-lang-nodejs="`contentType`" pulumi-lang-dotnet="`ContentType`" pulumi-lang-go="`contentType`" pulumi-lang-python="`content_type`" pulumi-lang-yaml="`contentType`" pulumi-lang-java="`contentType`">`content_type`</span> is `URL_ENCODED` and <span pulumi-lang-nodejs="`customContentType`" pulumi-lang-dotnet="`CustomContentType`" pulumi-lang-go="`customContentType`" pulumi-lang-python="`custom_content_type`" pulumi-lang-yaml="`customContentType`" pulumi-lang-java="`customContentType`">`custom_content_type`</span> is set. 2. <span pulumi-lang-nodejs="`contentType`" pulumi-lang-dotnet="`ContentType`" pulumi-lang-go="`contentType`" pulumi-lang-python="`content_type`" pulumi-lang-yaml="`contentType`" pulumi-lang-java="`contentType`">`content_type`</span> is `USER_PROVIDED` and <span pulumi-lang-nodejs="`customContentType`" pulumi-lang-dotnet="`CustomContentType`" pulumi-lang-go="`customContentType`" pulumi-lang-python="`custom_content_type`" pulumi-lang-yaml="`customContentType`" pulumi-lang-java="`customContentType`">`custom_content_type`</span> is not set.
  final String? customContentType;

  /// The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100.
  final Map<String, String>? headers;

  /// Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if <span pulumi-lang-nodejs="`maskHeaders`" pulumi-lang-dotnet="`MaskHeaders`" pulumi-lang-go="`maskHeaders`" pulumi-lang-python="`mask_headers`" pulumi-lang-yaml="`maskHeaders`" pulumi-lang-java="`maskHeaders`">`mask_headers`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> then the headers will be obscured with `******`.
  final bool? maskHeaders;

  /// The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with `/`, a `/` will be prepended automatically. Optional (defaults to `/`).
  final String? path;

  /// Contains information needed to add pings to an HTTP check.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckPingConfig? pingConfig;

  /// The port to the page to run the check against. Will be combined with <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> (specified within the <span pulumi-lang-nodejs="`monitoredResource`" pulumi-lang-dotnet="`MonitoredResource`" pulumi-lang-go="`monitoredResource`" pulumi-lang-python="`monitored_resource`" pulumi-lang-yaml="`monitoredResource`" pulumi-lang-java="`monitoredResource`">`monitored_resource`</span>) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL).
  final int? port;

  /// The HTTP request method to use for the check. If set to `METHOD_UNSPECIFIED` then <span pulumi-lang-nodejs="`requestMethod`" pulumi-lang-dotnet="`RequestMethod`" pulumi-lang-go="`requestMethod`" pulumi-lang-python="`request_method`" pulumi-lang-yaml="`requestMethod`" pulumi-lang-java="`requestMethod`">`request_method`</span> defaults to `GET`.
  /// Default value is `GET`.
  /// Possible values are: `METHOD_UNSPECIFIED`, `GET`, `POST`.
  final String? requestMethod;

  /// The authentication information using the Monitoring Service Agent. Optional when creating an HTTPS check; defaults to empty. Do not use with other authentication fields.
  /// Structure is documented below.
  final UptimeCheckConfigHttpCheckServiceAgentAuthentication?
      serviceAgentAuthentication;

  /// If true, use HTTPS instead of HTTP to run the check.
  final bool? useSsl;

  /// Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where <span pulumi-lang-nodejs="`monitoredResource`" pulumi-lang-dotnet="`MonitoredResource`" pulumi-lang-go="`monitoredResource`" pulumi-lang-python="`monitored_resource`" pulumi-lang-yaml="`monitoredResource`" pulumi-lang-java="`monitoredResource`">`monitored_resource`</span> is set to <span pulumi-lang-nodejs="`uptimeUrl`" pulumi-lang-dotnet="`UptimeUrl`" pulumi-lang-go="`uptimeUrl`" pulumi-lang-python="`uptime_url`" pulumi-lang-yaml="`uptimeUrl`" pulumi-lang-java="`uptimeUrl`">`uptime_url`</span>. If <span pulumi-lang-nodejs="`useSsl`" pulumi-lang-dotnet="`UseSsl`" pulumi-lang-go="`useSsl`" pulumi-lang-python="`use_ssl`" pulumi-lang-yaml="`useSsl`" pulumi-lang-java="`useSsl`">`use_ssl`</span> is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, setting <span pulumi-lang-nodejs="`validateSsl`" pulumi-lang-dotnet="`ValidateSsl`" pulumi-lang-go="`validateSsl`" pulumi-lang-python="`validate_ssl`" pulumi-lang-yaml="`validateSsl`" pulumi-lang-java="`validateSsl`">`validate_ssl`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> has no effect.
  final bool? validateSsl;

  UptimeCheckConfigHttpCheck({
    this.acceptedResponseStatusCodes,
    this.authInfo,
    this.body,
    this.contentType,
    this.customContentType,
    this.headers,
    this.maskHeaders,
    this.path,
    this.pingConfig,
    this.port,
    this.requestMethod,
    this.serviceAgentAuthentication,
    this.useSsl,
    this.validateSsl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptedResponseStatusCodesValue = acceptedResponseStatusCodes;
    if (acceptedResponseStatusCodesValue != null) {
      map['acceptedResponseStatusCodes'] = Input.encodeList<
              UptimeCheckConfigHttpCheckAcceptedResponseStatusCode,
              Map<String, dynamic>>(
          acceptedResponseStatusCodesValue, (value) => value.toMap());
    }
    final authInfoValue = authInfo;
    if (authInfoValue != null) {
      map['authInfo'] = authInfoValue.toMap();
    }
    final bodyValue = body;
    if (bodyValue != null) {
      map['body'] = bodyValue;
    }
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final customContentTypeValue = customContentType;
    if (customContentTypeValue != null) {
      map['customContentType'] = customContentTypeValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue;
    }
    final maskHeadersValue = maskHeaders;
    if (maskHeadersValue != null) {
      map['maskHeaders'] = maskHeadersValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final pingConfigValue = pingConfig;
    if (pingConfigValue != null) {
      map['pingConfig'] = pingConfigValue.toMap();
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final requestMethodValue = requestMethod;
    if (requestMethodValue != null) {
      map['requestMethod'] = requestMethodValue;
    }
    final serviceAgentAuthenticationValue = serviceAgentAuthentication;
    if (serviceAgentAuthenticationValue != null) {
      map['serviceAgentAuthentication'] =
          serviceAgentAuthenticationValue.toMap();
    }
    final useSslValue = useSsl;
    if (useSslValue != null) {
      map['useSsl'] = useSslValue;
    }
    final validateSslValue = validateSsl;
    if (validateSslValue != null) {
      map['validateSsl'] = validateSslValue;
    }
    return map;
  }

  factory UptimeCheckConfigHttpCheck.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheck(
      acceptedResponseStatusCodes: map['acceptedResponseStatusCodes'] == null
          ? null
          : Input.decodeList<
                  UptimeCheckConfigHttpCheckAcceptedResponseStatusCode>(
              map['acceptedResponseStatusCodes'],
              (value) =>
                  UptimeCheckConfigHttpCheckAcceptedResponseStatusCode.fromMap(
                      (value as Map).cast<String, dynamic>())),
      authInfo: map['authInfo'] == null
          ? null
          : UptimeCheckConfigHttpCheckAuthInfo.fromMap(
              (map['authInfo'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'] as String,
      contentType:
          map['contentType'] == null ? null : map['contentType'] as String,
      customContentType: map['customContentType'] == null
          ? null
          : map['customContentType'] as String,
      headers: map['headers'] == null
          ? null
          : (map['headers'] as Map).cast<String, String>(),
      maskHeaders:
          map['maskHeaders'] == null ? null : map['maskHeaders'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      pingConfig: map['pingConfig'] == null
          ? null
          : UptimeCheckConfigHttpCheckPingConfig.fromMap(
              (map['pingConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      requestMethod:
          map['requestMethod'] == null ? null : map['requestMethod'] as String,
      serviceAgentAuthentication: map['serviceAgentAuthentication'] == null
          ? null
          : UptimeCheckConfigHttpCheckServiceAgentAuthentication.fromMap(
              (map['serviceAgentAuthentication'] as Map)
                  .cast<String, dynamic>()),
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
      validateSsl:
          map['validateSsl'] == null ? null : map['validateSsl'] as bool,
    );
  }
}
