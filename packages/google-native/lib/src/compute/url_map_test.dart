// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_map_test_header.dart';

/// Message for the expected URL mappings.
class UrlMapTest {
  /// The weight to use for the supplied host and path when using advanced routing rules that involve traffic splitting.
  final int? backendServiceWeight;

  /// Description of this test case.
  final String? description;

  /// The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters. For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored. For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies https_redirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies strip_query, the test passes only if expectedOutputUrl does not contain any query parameters. expectedOutputUrl is optional when service is specified.
  final String? expectedOutputUrl;

  /// For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response. expectedRedirectResponseCode cannot be set when service is set.
  final int? expectedRedirectResponseCode;

  /// The expected URL that should be redirected to for the host and path being tested. [Deprecated] This field is deprecated. Use expected_output_url instead.
  final String? expectedUrlRedirect;

  /// HTTP headers for this request. If headers contains a host header, then host must also match the header value.
  final List<UrlMapTestHeader>? headers;

  /// Host portion of the URL. If headers contains a host header, then host must also match the header value.
  final String? host;

  /// Path portion of the URL.
  final String? path;

  /// Expected BackendService or BackendBucket resource the given URL should be mapped to. The service field cannot be set if expectedRedirectResponseCode is set.
  final String? service;

  /// Creates a new [UrlMapTest].
  /// [backendServiceWeight] The weight to use for the supplied host and path when using advanced routing rules that involve traffic splitting.
  /// [description] Description of this test case.
  /// [expectedOutputUrl] The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters. For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored. For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies https_redirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies strip_query, the test passes only if expectedOutputUrl does not contain any query parameters. expectedOutputUrl is optional when service is specified.
  /// [expectedRedirectResponseCode] For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response. expectedRedirectResponseCode cannot be set when service is set.
  /// [expectedUrlRedirect] The expected URL that should be redirected to for the host and path being tested. [Deprecated] This field is deprecated. Use expected_output_url instead.
  /// [headers] HTTP headers for this request. If headers contains a host header, then host must also match the header value.
  /// [host] Host portion of the URL. If headers contains a host header, then host must also match the header value.
  /// [path] Path portion of the URL.
  /// [service] Expected BackendService or BackendBucket resource the given URL should be mapped to. The service field cannot be set if expectedRedirectResponseCode is set.
  UrlMapTest({
    this.backendServiceWeight,
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.expectedUrlRedirect,
    this.headers,
    this.host,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendServiceWeightValue = backendServiceWeight;
    if (backendServiceWeightValue != null) {
      map['backendServiceWeight'] = backendServiceWeightValue;
    }
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
    final expectedUrlRedirectValue = expectedUrlRedirect;
    if (expectedUrlRedirectValue != null) {
      map['expectedUrlRedirect'] = expectedUrlRedirectValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          pulumi.Input.encodeList<UrlMapTestHeader, Map<String, dynamic>>(
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

  factory UrlMapTest.fromMap(Map<String, dynamic> map) {
    return UrlMapTest(
      backendServiceWeight: map['backendServiceWeight'] == null
          ? null
          : map['backendServiceWeight'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      expectedOutputUrl: map['expectedOutputUrl'] == null
          ? null
          : map['expectedOutputUrl'] as String,
      expectedRedirectResponseCode: map['expectedRedirectResponseCode'] == null
          ? null
          : map['expectedRedirectResponseCode'] as int,
      expectedUrlRedirect: map['expectedUrlRedirect'] == null
          ? null
          : map['expectedUrlRedirect'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<UrlMapTestHeader>(
              map['headers'],
              (value) => UrlMapTestHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
