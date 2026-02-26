// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'url_map_test_header2.dart';

/// Message for the expected URL mappings.
class UrlMapTest2 {
  /// Description of this test case.
  final String? description;

  /// The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters. For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored. For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies https_redirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies strip_query, the test passes only if expectedOutputUrl does not contain any query parameters. expectedOutputUrl is optional when service is specified.
  final String? expectedOutputUrl;

  /// For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response. expectedRedirectResponseCode cannot be set when service is set.
  final int? expectedRedirectResponseCode;

  /// HTTP headers for this request. If headers contains a host header, then host must also match the header value.
  final List<UrlMapTestHeader2>? headers;

  /// Host portion of the URL. If headers contains a host header, then host must also match the header value.
  final String? host;

  /// Path portion of the URL.
  final String? path;

  /// Expected BackendService or BackendBucket resource the given URL should be mapped to. The service field cannot be set if expectedRedirectResponseCode is set.
  final String? service;

  UrlMapTest2({
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.headers,
    this.host,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expectedOutputUrlValue = expectedOutputUrl;
    if (expectedOutputUrlValue != null) {
      map['expectedOutputUrl'] = expectedOutputUrlValue;
    }
    final expectedRedirectResponseCodeValue = expectedRedirectResponseCode;
    if (expectedRedirectResponseCodeValue != null) {
      map['expectedRedirectResponseCode'] = expectedRedirectResponseCodeValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<UrlMapTestHeader2, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory UrlMapTest2.fromMap(Map<String, dynamic> map) {
    return UrlMapTest2(
      description:
          map['description'] == null ? null : map['description'] as String,
      expectedOutputUrl: map['expectedOutputUrl'] == null
          ? null
          : map['expectedOutputUrl'] as String,
      expectedRedirectResponseCode: map['expectedRedirectResponseCode'] == null
          ? null
          : map['expectedRedirectResponseCode'] as int,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<UrlMapTestHeader2>(
              map['headers'],
              (value) => UrlMapTestHeader2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
